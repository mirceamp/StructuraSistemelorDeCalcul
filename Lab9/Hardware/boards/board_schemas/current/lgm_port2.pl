#!/tools/xgs/perl/5.8.5/bin/perl 
####!/usr/local/web/perl

# ===============================================================
# $Header: /devl/xcs/repo/groups/ipdt/web/cgi-bin/iplicense/lgm_port.pl,v 1.23 2009/04/21 13:43:08 bcotter Exp $
# ===============================================================
#
# LICENSE GENERATION MANAGER(lgm_port.pl)
#
#       Script to generate the requested IP license file(s) for pay cores.
#
# Usage:
#
#       See $Usage definition.
#
# Requirements:
#
#       * Perl 5.8.5 (or later) installed to /usr/local/web/perl
#       * lmcrypt utility e.g. /build/xfndry/HEAD/env/TOS/Security3rdParty/build/amd64_re3/lmcrypt
#       * The following datafiles installed (relative from lgm_port.pl location):
#          ./data/coreset.txt
#          ./data/coreset_ise.txt
#          ./data/coreset_edk.txt
#          ./data/coredesp.cf
#          ./data/corenode.cf
#          ./data/README.txt
#
# Author:
#
#      Brian Cotter (brian.cotter@xilinx.com)
#
# Version:
#
#      0.1      -   initial script (10-Nov-2008)
#      0.2      -   added subcore support (14-Nov-2008)
#      0.3      -   added 'nogenid' option (14-Nov-2008)
#      0.4      -   added feedback from mlin (19-Nov-2008)
#      0.5      -   removed '-anyhost' option and tidied 
#                   getFlexHostIds() functionality (20-Nov-2008)
#      0.6      -   tweaked script for handoff to OMS (24-Nov-2008)
#      0.7      -   added validation checks on hostid inputs (25-Nov-2008)
#      0.8      -   added functionality to print all features (18-Dec-2008)
#      0.9      -   added 11.2 support for INCREMENT lines + mirror OLG license format (01-Apr-2009)
#      1.0      -   added support to dump atomic content (13-Apr-2009)
#      1.1      -   added nocomment support for install area licenses (21-Apr-2009)
#
# ===============================================================

# ---------------------------------------------------------------
# Debug information switches
# ---------------------------------------------------------------
local $TOOLDEBUG = 0;   # save tool debug information in log file

##use strict;
use POSIX;
use Cwd;
use Getopt::Long;
use File::Path;
use File::Basename;

# ---------------------------------------------------------------
# process command options
# ---------------------------------------------------------------

local $Version =  '$Revision: 1.23 $';
      $Version =~ s/^\$Revision:*\s*//i;
      $Version =~ s/\$$//i;
      $Version =  "Xilinx IP License Generation Manager v${Version}\n";

local $Usage =
   "Usage: $0 [options]...\n" .
   "  -help                       Print this message\n" .
   "  -version                    Print the version of the license generator\n" .
   "  -debug                      Print debug output\n" .
   "------------------------------ Standard Options -----------------------------\n" .
   "  -core=<core_id>             Logical core set indicator (e.g. cpri_src) or individual core\n" .
   "                              name including version (e.g. cpri_v1). Required option. \n" .
   "  -contractend=<end_date>     End date of the customer's 1 year maintenance contract in \n".
   "                              'yyyy.mm' format e.g. 24-Jun-2009 becomes '2009.06'.\n" .
   "                              Defaults to '1.0' if not present.\n" .
   "  -email=<email_address>      Valid email address that the generated license(s) will\n" . 
   "                              be registered with. Defaults to 'Xilinx-internal-user'\n" .
   "                              if not definded.\n" .
   "  -hostid=<host_id>           Single hostid that the generated license(s)\n" .
   "                              will be tied to, or comma separated list of\n" .
   "                              hostids enclosed within double quotes.\n" .
   "                              Use ‘lmutil lmhostid’ to get hostid\n" .
   "  -dongleid=<dongle_id>       Single USB dongle id (8 hex digits) that the generated\n" .
   "                              license(s) will be tied to, or comma separated list of\n" . 
   "                              dongle ids enclosed within double quotes\n" .
   "                              Use ‘lmutil lmhostid -flexid’ to get dongleid\n" .
   "  -diskid=<disk_id>           Single disk id (8 hex digits) that the generated license(s)\n" . 
   "                              will be tied to, or comma separated list of disk\n" . 
   "                              ids enclosed within double quotes\n" .
   "                              Use ‘lmutil lmhostid -vsn' to get diskid\n" .
   "  -dir=<path>                 Custom license path that the generated\n" .
   "                              flexlm license(s) will be stored.\n" . 
   "                              Defaults to \$cwd if not present.\n" .
   "------------------------------ Advanced Options ------------------------------\n" .
   "  -license=<type>             License level indicator as below:\n" .
   "                                sim  - simulation only license\n" .
   "                                eval - evaluation license\n" .
   "                                full - full license\n" .
   "                                src  - source license\n" .
   "                              Note: Overrides logical coreset license type\n" .
   "  -noclient                   Do not generate client-side license(s). Overrides other options.\n" .
   "  -noserver                   Do not generate server-side license(s). Overrides other options.\n" .
   "  -noreadme                   Do not generate README.txt. Overrides other options.\n" .
   "  -3server                    Generate three-server redundant server license.\n" .
   "  -lmcrypt=<path>             specify given lmcrypt path to use\n" .
   "  -expire=<date>              Force license to expire on exact date, date must be\n" .
   "                              in mm/dd/yyyy format enclosed within double quotes\n" .
   "  -noexpire                   Force license(s) to be permanent. By default only full\n" .
   "                              or src licenses are permanent\n" .
   "  -nonotice                   Do not add NOTICE field to generated license(s)\n" .
   "  -nogenid                    Force no generation id on output filenames\n" .
   "  -nodatabase                 Do not use coreset database to validate logical core set indicator\n" .
   "  -nocomments                 Do not add comment lines to generated license(s)\n" .
   "\n";

# define global variables and constants here:
# -- global variables which are set by author are starting with x_
# -- global variables which are get from user are starting with customer_
# ---------------------------------------------------------------


local %x_logical_core_set;  # two dimensional mapping coresets to (corename,lictype) values
local %new_output_files;    # list of output files generated by this run of the script only

# get date and time info
local @current_time     = localtime(time);
local $x_current_date   = POSIX::strftime("%d-%b-%Y", @current_time);  
local $x_current_date2  = POSIX::strftime("%m/%d/%Y", @current_time); 
local $x_current_time   = sprintf("%02d:%02d:%02d", $current_time[2], $current_time[1], $current_time[0]);

local @yesterday_time   = localtime(time - (24 * 60 * 60));
local $x_yesterday_date = POSIX::strftime("%d-%b-%Y", @yesterday_time);  
local $x_yesterday_time = sprintf("%02d:%02d:%02d", $yesterday_time[2], $yesterday_time[1], $yesterday_time[0]);

local @expiry_time      = localtime(time + (3 * 30 * 24 * 60 * 60));   # default to 3 month expirey by default
local $x_expire_date    = POSIX::strftime("%d-%b-%Y", @expiry_time);
local $x_expire_date2   = POSIX::strftime("%m/%d/%Y", @expiry_time);

local $x_generation_id =  ${x_current_date2} . ${x_current_time}; 
      $x_generation_id =~ s/[\/:]//g;

# get directory information
local $x_lgm_dir            = File::Basename::dirname("$0");       # directory containing LGM.pl script
local $x_cwd_dir            = Cwd::getcwd();                       # current working directory
local $x_out_dir            = $x_cwd_dir;                          # default to cwd

# get input data files
local $x_data_file          = ${x_lgm_dir} . '/data/coreset.txt';     # data file to define logical core set indicators
local $x_desp_file          = ${x_lgm_dir} . '/data/coredesp.cf';     # data structure to define core description and catagory
local $x_node_file          = ${x_lgm_dir} . '/data/corenode.cf';     # data structure to define node-free cores
local $x_readme_file        = ${x_lgm_dir} . '/data/README.txt'; # readme.txt file template

# constant flexlm content
local $x_flexlm_daemon         = 'xilinxd';                        # FLEXlm license VENDOR_DAEMON value
local $x_flexlm_version        = '1.0';                            # FLEXlm license VERSION value
local $x_flexlm_issuer         = 'Xilinx Inc';                     # FLEXlm license ISSUER value
local $x_flexlm_filename       = 'Xilinx.lic';                     # FLEXlm license filename

# xilinx install commants
#local $x_lmcrypt_cmd           = '/build/xfndry/HEAD/env/TOS/Security3rdParty/build/amd64_re3/lmcrypt';
# Change this to use the lnx64 lmcrypt released into the parallel directory
local $x_lmcrypt_cmd        = ${x_lgm_dir} . '/../../bin/unwrapped/lnx64.o/lmcrypt';

# read customer options
local $customer_contract_end             = $x_flexlm_version;      # default license end date
local $customer_email_address            = 'Xilinx-internal-users';# default registered license owner
local $customer_license_type             = '';                     # customer override of license type TODO
local $customer_out_dir                  = '';                     # place to put generated license files
local $customer_expire_date              = '';                     # set a specific date to expire
local $customer_no_expire                = 0;                      # by default licenses expire
local $customer_no_notice                = 0;                      # by default print NOTICE in generated license(s)

local $customer_no_client                = 0;                      # by default generate client-side license(s)
local $customer_no_server                = 0;                      # by default generate server-side license(s)
local $customer_no_readme                = 0;                      # by default generate README.txt
local $customer_3server                  = 0;                      # by default, don't generate three-server redundent license.
local $customer_no_genid                 = 0;                      # by default, generation id is enabled
local $customer_no_database              = 0;                      # by default, use coreset database
local $customer_no_comments              = 0;                      # by default, use comments

local @customer_requested_core;

local @customer_valid_hostids;
local @customer_valid_dongleids;
local @customer_valid_diskids;

#
#
#
# ===============================================================
# DONOT MODIFY BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING
# ===============================================================
#
#
#

# print help message if no arguments were provided
# ---------------------------------------------------------------
if ( @ARGV == 0 )
{
   print STDERR $Usage;
   exit 1;
} # if

# get the arguments to this script
# ---------------------------------------------------------------
local @Pargs = ();
while ( 1 )
{
   if ( $ARGV[0] =~ m/^\-/ )
   {
      push(@Pargs, shift @ARGV);
   }
   else
   {
      last;
   } # if-else
} # while

# set variable values by options
# ---------------------------------------------------------------
@ARGV=@Pargs;
local %Opts = (
      'contractend' => \$customer_contract_end,
      'email'       => \$customer_email_address,
      'core'        => \@customer_requested_core,
      'dir'         => \$customer_out_dir,
      'license'     => \$customer_license_type,
      'hostid'      => \@customer_valid_hostids,
      'dongleid'    => \@customer_valid_dongleids,
      'diskid'      => \@customer_valid_diskids,
      'lmcrypt'     => \$x_lmcrypt_cmd,
      'expire'      => \$customer_expire_date
      );
local $retval = Getopt::Long::GetOptions(
      \%Opts,
      "help",
      "version",
      "debug",
      "contractend=s",
      "email=s",
      "core=s@",
      "dir=s",
      "license=s", 
      "noclient",
      "noserver",
      "noreadme",
      "3server",
      "noexpire",
      "nonotice",
      "nogenid",
      "nodatabase",
      "nocomments",
      "lmcrypt=s",
      "expire=s",
      "hostid=s@",
      "dongleid=s@",
      "diskid=s@"
      );

if ( ! $retval )
{
   print STDERR $Usage;
   exit 1;
}

if ( exists($Opts{'help'}) )
{
   print STDOUT $Usage;
   exit 0;
}
if ( exists($Opts{'version'}) )
{
   print STDOUT $Version;
   exit 0;
}
if ( exists($Opts{'debug'}) )
{
   $TOOLDEBUG = 1; # enable debug output
}

@customer_requested_core      = split(/,/, join(',', @customer_requested_core));
@customer_valid_hostids       = split(/,/, join(',', @customer_valid_hostids));
@customer_valid_dongleids     = split(/,/, join(',', @customer_valid_dongleids));
@customer_valid_diskids       = split(/,/, join(',', @customer_valid_diskids));

# validate all inputs...
if (! -x $x_lmcrypt_cmd) {
   print STDERR "ERROR: The required executable lmcrypt is not available at: $x_lmcrypt_cmd.\nPlease use the -lmcrypt switch to specify a valid path.\n"; 
   print STDERR $Usage;
   exit 1;
}

if ( @customer_requested_core <= 0  )
{
   print STDERR "Error:\tmissing '-core' option\n";
   print STDERR $Usage;
   exit 1;
}

if ( exists($Opts{'noexpire'}) && ! $customer_expire_date eq '' )
{
   print STDERR "Error:\tconflicting options 'noexpire' and 'expire'\n";
   print STDERR $Usage;
   exit 1;
}

if ( exists($Opts{'noexpire'}) )
{
   $customer_no_expire = 1;
}# if

if ( exists($Opts{'nonotice'}) )
{
   $customer_no_notice = 1;
}# if

if ( exists($Opts{'noclient'}) )
{
   $customer_no_client = 1;
   $customer_no_readme = 1; # implied
}# if

if ( exists($Opts{'noserver'}) )
{
   $customer_no_server = 1;
}# if

if ( exists($Opts{'noreadme'}) )
{
   $customer_no_readme = 1;
}# if

if ( exists($Opts{'3server'}) )
{
   $customer_3server = 1;
}# if

if ( exists($Opts{'nogenid'}) )
{
   $customer_no_genid = 1;
}

if ( exists($Opts{'nodatabase'}) )
{
   $customer_no_database = 1;
}

if ( exists($Opts{'nocomments'}) )
{
   $customer_no_comments = 1;
}

### -------------------------------------------------------------
### begin of main program
### -------------------------------------------------------------

&initialize();
&generateLicense();
exit 0;
### -------------------------------------------------------------
### end of main program
### -------------------------------------------------------------

### -------------------------------------------------------------
### sub programs:
### -- initialize()
###      - constructCoreSet()
### -- generateLicense()
###      - createClientFlexlmLicense()
###      - createServerFlexlmLicense()
###      - createReadme()
### -------------------------------------------------------------

sub getOutputDirectory()
{
   my $outputDir = $customer_out_dir;
   if ( $outputDir eq '' ) {
      $outputDir = $x_out_dir;
   }

   ;# create output dir if non-existent
   if ( ! -d ${outputDir} )
   {
       File::Path::mkpath($outputDir, 0, 0777)
         or dieNicely("Error:\tcannot create output directory ${outputDir}");
   }# if

   return $outputDir
}# getOutputDirectory

# initialization ...
# ---------------------------------------------------------------
sub initialize()
{
   ;# load data files
   require("${x_desp_file}") or &dieNicely("Error:\tcannot open required data file ${x_desp_file}");
   require("${x_node_file}") or &dieNicely("Error:\tcannot open required data file ${x_node_file}");

   #construct coreset
   &constructCoreSet("${x_data_file}"); 

   if ( ${TOOLDEBUG} )
   {
      # dump coreset
      &dumpCoresets();
      &dumpAtomics();
   }

}# initialize

sub getParentCoreId()
{
   my ( $core_id ) = @_;

   if ( $core_id =~ /{\S+}/ ) 
   {
      $core_id =~ s/^(\S+){\S+}$/$1/g;
   }
   
   return $core_id;
} # getParentCoreId()

sub getSubCoreIds()
{
   my ( $paycore_id ) = @_;

   my $sub_core_ids = "";
   if ( $paycore_id =~ /{\S+}/ ) 
   {
      $sub_core_ids = $paycore_id;
      $sub_core_ids =~ s/^\S+{(\S+)}$/$1/g;
   }
   else
   {
      foreach my $coreset_id (keys %x_logical_core_set) 
      {
         foreach my $core_id (keys %{$x_logical_core_set{$coreset_id}}) 
         {
            my $parent_core_id = &getParentCoreId($core_id);
            if ( $core_id =~ /{\S+}/ 
              && $parent_core_id eq $paycore_id ) 
            {
               $sub_core_ids = $core_id;
               $sub_core_ids =~ s/^\S+{(\S+)}$/$1/g;
               last;
            }
         }# if
      }# foreach
   }

   my @ids = split(/\&/, "$sub_core_ids");
   return @ids;
} # getSubCoreIds()

# contruct two dimensional %x_logical_core_set hash from given data file...
# ---------------------------------------------------------------
sub constructCoreSet()
{
   # core set definition file
   my ($csfile) = @_;
   my $csdir = File::Basename::dirname("${csfile}");
   my $FH = 'FH' . File::Basename::basename("${csfile}", ".txt");

   open($FH, "< ${csfile}") or &dieNicely("Error:\tcannot open data file: ${csfile}\n");
   flock($FH, 2);   
   seek($FH, 0, 0);

   while ( <$FH> )
   {
      chomp;
      next unless s/^([^#]*?):\s*//; # skip comment lines

      my $set_name = $1; # logical core set indicator name

      # hierarchically include sub data files
      if ( ${set_name} eq '!include' )
      {
         #recursively construct core set
         if ( $_ =~ /^\// )
         {
            # given absolute path
            &constructCoreSet("$_");
         }
         else
         {
            # given relative path
            &constructCoreSet("${csdir}/$_");
         }# if-else
         next;
      }# if

      # coreset.txt data format: 
      #   <set_name>: <set_field1>, <set_field2>, ...
      # where <set_field> data format:
      #   <core_name>=<core_lic> or <set_name>

      # e.g. set_name = "lte_dl_channel_encoder_sim"
      if ( !exists($x_logical_core_set{$set_name}) )
      {
         $x_logical_core_set{$set_name} = ();
      }# if

      # e.g. set_field = "lte_dl_channel_encoder_v1{tcc_encoder_3gpplte_v2}=sim"
      foreach my $set_field ( split(/,\s*/) )
      {
         if ( $set_field =~ /=/ )
         {
            # e.g. core_name = "lte_dl_channel_encoder_v1{tcc_encoder_3gpplte_v2}"
            # e.g. core_lic  = "sim"
            my ($core_name, $core_lic) = split(/=/, $set_field);
            $core_lic =~ s/^\s*([^#\s]+)\s*#.*/$1/; # truncate comment if exists
            foreach my $core_id ( &getParentCoreId($core_name), &getSubCoreIds($core_name) ) 
            {
               # insert contract-based atomics...
               my $increment_id = &getNefName($core_id);
               if ( !exists($x_logical_core_set{$set_name}{$increment_id}) ) 
               {
                  $x_logical_core_set{$set_name}{$increment_id} = $core_lic;
               }

               # insert version-based atomics...
               $x_logical_core_set{$set_name}{$core_id} = $core_lic;   
            }   
         }
         else
         {
            $set_field =~ s/^\s*([^#\s]+)\s*#.*/$1/; # truncate comment if exists
            if ( exists($x_logical_core_set{$set_field}) )
            {
               foreach my $core_name ( keys(%{$x_logical_core_set{$set_field}}) )
               {
                  # expand/copy existing coreset in place
                  my $core_lic = $x_logical_core_set{$set_field}{$core_name};
                  $x_logical_core_set{$set_name}{$core_name} = $core_lic;
               }# foreach
            }
            else
            {
               dieNicely("Error:\tdata file syntax error: ${set_field} does not yet exist.\n");
            }# if-else

         }# if-else

      }# foreach

   }# while

   close($FH);

}# constructCoreSet

sub dumpAtomics()
{
   &debugInfo("Dumping atomics from database:\n");
   &debugInfo("\n");

   # build atomics map...
   my %atomicsMap;
   foreach my $coreset_id (keys %x_logical_core_set) 
   {
      my @core_ids = &getCoreIds($coreset_id); # array of core ids to be resolved
      foreach my $core_id ( @core_ids )
      {
         my $incrementId = &getNefName($core_id);
         my $featureIds = $atomicsMap{$incrementId};
         if ( $featureIds =~ /$core_id/ ) 
         {
            next; # do not add duplicates
         }
            
         if ( $featureIds ne "" ) 
         {
            $featureIds .= ":";
         }
         if ( $incrementId ne $core_id ) 
         {
            $featureIds .= "$core_id";
         }
 
         $atomicsMap{$incrementId} = $featureIds;
      }
   }

   # pretty print map contents...
   my $line = "";
   
   my $column_width = 0;
   foreach my $incrementId (keys %atomicsMap) 
   {
      if ( $column_width < length($incrementId) ) 
      {
         $column_width = length($incrementId); 
      }
   }

   $line .= "INCREMENT";
   my $num_spaces = $column_width - length("INCREMENT");
   while ( $num_spaces >= 0 ) 
   {
      $line .= " ";
      $num_spaces -= 1;
   }
   $line .= "FEATURE(s)";
   $line .= "\n";

   &debugInfo($line); $line = "";

   $line .= "---------";
   my $num_spaces = $column_width - length("---------");
   while ( $num_spaces >= 0 ) 
   {
      $line .= " ";
      $num_spaces -= 1;
   }
   $line .= "----------";
   $line .= "\n";

   &debugInfo($line); $line = "";

   foreach my $incrementId (sort keys %atomicsMap) 
   {
      my $featureIds = $atomicsMap{$incrementId};

      $line .= "$incrementId";
      my $num_spaces = $column_width - length($incrementId);
      while ( $num_spaces >= 0 ) 
      {
         $line .= " ";
         $num_spaces -= 1;
      }
      $line .= "$featureIds";
      $line .= "\n";

      &debugInfo($line); $line = "";
   }

   &debugInfo("--------------------\n");
   &debugInfo("\n");

} # dumpAtomics

sub dumpCoresets()
{
   &debugInfo("Dumping coresets from database:\n");
   &debugInfo("\n");

   # pretty print map contents...
   my $line = "";
   
   my $column_width = 0;
   foreach my $coreset_id (keys %x_logical_core_set) 
   {
      if ( $column_width < length($coreset_id) ) 
      {
         $column_width = length($coreset_id); 
      }
   }

   $line .= "CORESET";
   my $num_spaces = $column_width - length("CORESET");
   while ( $num_spaces >= 0 ) 
   {
      $line .= " ";
      $num_spaces -= 1;
   }
   $line .= "CORE ID(s)";
   $line .= "\n";

   &debugInfo($line); $line = "";

   $line .= "-------";
   my $num_spaces = $column_width - length("-------");
   while ( $num_spaces >= 0 ) 
   {
      $line .= " ";
      $num_spaces -= 1;
   }
   $line .= "----------";
   $line .= "\n";

   &debugInfo($line); $line = "";

   foreach my $coreset_id (sort keys %x_logical_core_set) 
   {
      my @core_ids = &getCoreIds($coreset_id);

      $line .= "$coreset_id";
      my $num_spaces = $column_width - length($coreset_id);
      while ( $num_spaces >= 0 ) 
      {
         $line .= " ";
         $num_spaces -= 1;
      }
      $line .= "@core_ids";
      $line .= "\n";

      &debugInfo($line); $line = "";
   }

   &debugInfo("--------------------\n");
   &debugInfo("\n");

} # dumpCoresets

sub getLicenseType()
{
   my ( $coreset_id,  $paycore_id ) = @_;

   my $licenseType = $customer_license_type;
   if ( $licenseType eq '' ) 
   {
      $licenseType = 'sim'; # default to simulation license

      # try to resolve license from coreset.txt file...
      if ( exists($x_logical_core_set{$coreset_id}) ) 
      {
         foreach my $core_id (keys %{$x_logical_core_set{$coreset_id}}) 
         {
            if ( $core_id eq $paycore_id ) 
            {               
               $licenseType = $x_logical_core_set{$coreset_id}{$core_id};
               last;
            }
         }# foreach
      }

      ;# HACK: To ensure 'cpri' and 'obsai' licenses max to 'full'
      ;#       when generating a server license.
      if ($licenseType eq 'src')
      {
         if ($paycore_id eq 'cpri' || $paycore_id eq 'obsai')
         {
            $licenseType = 'full';
         }
      }
      ;# end HACK
   }

   ;# transform to FLEX format
   if ( $licenseType eq 'sim' )
   {
      $licenseType = 'Design_Linking';
   }
   elsif ( $licenseType eq 'eval' )
   {
      $licenseType = 'Hardware_Evaluation';
   }
   elsif ( $licenseType eq 'full' )
   {
      $licenseType = 'Bought';
   }
   elsif ( $licenseType eq 'src' )
   {
      $licenseType = 'Source';
   }
   else
   {
      &dieNicely("Error:\tunexpected license type: '$licenseType'\n");
   }

   return $licenseType;

} # getLicenseType

sub getFlexExpireDate()
{
   my ( $licenseType ) = @_;

   my %x_month = (
      '1'   => 'jan',
      '01'  => 'jan',
      '2'   => 'feb',
      '02'  => 'feb',
      '3'   => 'mar',
      '03'  => 'mar',
      '4'   => 'apr',
      '04'  => 'apr',
      '5'   => 'may',
      '05'  => 'may',
      '6'   => 'jun',
      '06'  => 'jun',
      '7'   => 'jul',
      '07'  => 'jul',
      '8'   => 'aug',
      '08'  => 'aug',
      '9'   => 'sep',
      '09'  => 'sep',
      '10'  => 'oct',
      '11'  => 'nov',
      '12'  => 'dec'
   );

   ;# use customer expire date if available...
   my $expire_date = $customer_expire_date;
   if ( $expire_date eq '' ) {
      $expire_date = $x_expire_date2;
   }

   my ($xm, $xd, $xy) = split(/\//, $expire_date);

   my $flexExpireDate = $xd . '-' . $x_month{$xm} . '-' . $xy;   
   if ( $customer_no_expire )
   {
      $flexExpireDate = "permanent";
   }
   elsif ( $customer_expire_date eq '' && ($licenseType eq 'Bought' || $licenseType eq 'Source') )
   {
      $flexExpireDate = "permanent"; # default to permanent for bough and source licenses
   }

   return $flexExpireDate;

} ;# getFlexExpireDate

# generate requested license files and package them up
# ---------------------------------------------------------------
sub generateLicense()
{
   print("Expanding logical core set to generate the following atomic IDs:\n");
   foreach my $coreset_id ( @customer_requested_core )
   {   
      my @core_ids = &getCoreIds($coreset_id); # array of core ids to be resolved
      print("\t$coreset_id: @core_ids\n");
   }
   print("\n");

   if ( !$customer_no_client ) 
   {
      # one client license will be created per core for all license features
      &createClientFlexlmLicense();
   }

   if ( !$customer_no_server ) 
   {
      # one network license will be created per generation for all license features
      &createServerFlexlmLicense();
   }

   if ( !$customer_no_readme ) 
   {
      # one readme file will be created per generation
      &createReadme();
   }

}# generateLicense

sub getNefName()
{
   my ( $coreset_id ) = @_;

   my $nefname = $coreset_id;
   $nefname =~ s/_v[0-9]+.*$//;

   return $nefname
}# getNefName

# return flex notice string for a given core name (feature id)
# ---------------------------------------------------------------
sub getFlexNotice()
{
   my ( $feature ) = @_;

   my $nefname = &getNefName($feature);

   # get notice indicator for founded core set
   my $nidc = 'none';   # default
   for my $key ( 0 .. $#XCORES )
   {
      if ( exists($XCORES[$key]{$nefname}) && exists($XCORES[$key]{'_note_'}) )
      {
         $nidc = $XCORES[$key]{'_note_'};
         last;
      }# if
   }# for

   if ( exists($XNOTES{$nidc}) )
   {
      # get notice string value based on found indicator
      $ntstr = $XNOTES{$nidc};
      $ntstr =~ s/\*EMAIL\*/$customer_email_address/;
      $ntstr =~ s/\*DATE\*/$x_current_date/;
   }# if

   return $ntstr;

}# getFlexNotice

# return true if the requested core name is a valid pay core name
# ---------------------------------------------------------------
sub inCoreList()
{
   my ( $paycore_id ) = @_;

   foreach my $coreset_id (keys %x_logical_core_set) 
   {
      foreach my $core_id (keys %{$x_logical_core_set{$coreset_id}}) 
      {
         if ( $core_id eq $paycore_id ) 
         {
            return 1;
         }
      }# if
   }# foreach

   return 0

}# inCoreList

sub getCoreIds()
{
   my ( $coreset_id ) = @_;

   my @core_ids; # array of core ids to be resolved
   if ( !$customer_no_database ) 
   {
      # use coreset database to find core ids...

      if ( exists($x_logical_core_set{$coreset_id}) )
      {
         # check if user requested a logical core set license
         @core_ids = keys(%{$x_logical_core_set{$coreset_id}}); # multiple core ids
      }
      elsif ( &inCoreList($coreset_id) )
      {
         # check if user requested a single core license
         @core_ids = ("$coreset_id"); # single core id
      } 

      if ( @core_ids <= 0 ) 
      {
         # No features specified (possibly invalid core_id passed in)
         &dieNicely("Error:\t[INVALID_LOGICAL_CORE_SET_INDICATOR_OR_CORE_NAME] - An invalid coreset.txt entry or core name was requested: '$coreset_id'\n");
      } # if
   }
   else
   {
      # do not use coreset database to find core ids...

      @core_ids = ("$coreset_id"); # single core id
   }

   return sort(@core_ids);
}#  getCoreIds

sub getFlexHostIds()
{
   my @flex_hostids; # array of flex HOSTID values passed in by user

   # get host ids
   if ( @customer_valid_hostids > 0 ) {
      foreach my $hostid ( @customer_valid_hostids ) 
      {
         $hostid =~ s/-//g;
         if ( $hostid =~ /^[0-9a-z]{8}$/i ) 
         {
            ;# solaris hostid
            push(@flex_hostids, "$hostid");
         }
         elsif ( $hostid =~ /^[0-9a-z]{12}$/i ) 
         {
            ;# ethernet address
            push(@flex_hostids, "$hostid");
         }
         else
         {
            &dieNicely("Error:\tinvalid hostid detected: $hostid\n");
         }
      }
   }

   # get disk ids
   if ( @customer_valid_diskids > 0 ) {
      foreach my $diskid ( @customer_valid_diskids ) 
      {
         if ( $diskid =~ /^[0-9a-z]{8}$/i ) 
         {
            ;# disk serial number
            push(@flex_hostids, "DISK_SERIAL_NUM=$diskid");
         }
         else
         {
            &dieNicely("Error:\tinvalid diskid detected: $diskid\n");
         }
      }
   }

   # get dongle ids
   if ( @customer_valid_dongleids > 0 ) {
      foreach my $dongleid ( @customer_valid_dongleids ) 
      {   
         if ( $dongleid =~ /^6-[0-9a-z]{8}$/i ) 
         {
            ;# dongle
            push(@flex_hostids, "FLEXID=$dongleid");
         } 
         elsif ( $dongleid =~ /^7-[0-9a-z]{8}$/i )
         {
            ;# dongle
            push(@flex_hostids, "FLEXID=$dongleid");
         }
         elsif ( $dongleid =~ /^8-[0-9a-z]{12}$/i )
         {
            ;# dongle
            push(@flex_hostids, "FLEXID=$dongleid");
         }
         elsif ( $dongleid =~ /^9-[0-9a-z]{8}$/i )
         {
            ;# USB dongle
            push(@flex_hostids, "FLEXID=$dongleid");
         }
         else
         {
            &dieNicely("Error:\tinvalid dongleid detected: $dongleid\n");
         }
      }
   }

   if ( @flex_hostids <= 0 )
   {
      @flex_hostids = ("ANY"); # node free license requested
   }

   return @flex_hostids;
} #getFlexHostIds

# get filename of output FLEX license file
# ---------------------------------------------------------------
sub getLicenseFilename()
{
   my ( $core_id ) = @_;

   # name of generated license file
   my $lic_file = "";

   my $outputDir = &getOutputDirectory();
   if ( $outputDir ne '' ) {
      $lic_file .= "${outputDir}/";
   }

   if ( !$customer_no_genid ) {
      $lic_file .= "${x_generation_id}_";
   }

   $lic_file .= $x_flexlm_filename;

   return $lic_file;
} # getLicenseFilename

# create a single FLEXlm license file by lgm itself
# ---------------------------------------------------------------
sub createClientFlexlmLicense()
{
   # get the list of valid hostids for client license(s) 
   my @flex_hostids = &getFlexHostIds(); # array of hostids passed in by user

   # name of generated license file
   my $x_flexlm_file = &getLicenseFilename($core_id);
   if ( -e "${x_flexlm_file}" && !exists($new_output_files{"${x_flexlm_file}"}) ) 
   {
      print ("Deleting ${x_flexlm_file} as already exists\n");
      File::Path::rmtree("${x_flexlm_file}") 
         or &dieNicely("Error:\tcannot delete file ${x_flexlm_file}\n");
   }

   # Flexlm license file
   open(LICFILE, "> ${x_flexlm_file}") 
               or &dieNicely("Error:\tfailed to open ${x_flexlm_file}: $!\n");

   $new_output_files{"${x_flexlm_file}"} = (); # register new output file

   print LICFILE "# ----- REMOVE LINES ABOVE HERE --------------------------\n" if (!$customer_no_comments);
   print LICFILE "#\n" if (!$customer_no_comments); 
   print LICFILE "# This license is valid from ${x_yesterday_time} on ${x_yesterday_date}.\n" if (!$customer_no_comments);
   print LICFILE "#\n" if (!$customer_no_comments);
   print LICFILE "# This is license NODELOCKED to HOSTID=\"@flex_hostids\";\n" if (!$customer_no_comments);
   print LICFILE "# there is no need to run lmgrd for this license.\n" if (!$customer_no_comments);
   print LICFILE "#\n" if (!$customer_no_comments);
   print LICFILE "#\n" if (!$customer_no_comments); 

   foreach my $coreset_id ( @customer_requested_core )
   {
      my @core_ids = &getCoreIds($coreset_id); # array of core ids to be resolved

      foreach my $core_id ( @core_ids )
      {
         my $licenseType  = &getLicenseType($coreset_id, $core_id);
         my $expireOnDate = &getFlexExpireDate($licenseType);

         my $nstr = &getFlexNotice($core_id);

         if ( $core_id eq &getNefName($core_id) ) 
         {
            print("Generating INCREMENT $core_id ($licenseType) in license file ${x_flexlm_file}\n");

            print LICFILE "# This license is valid for permanent ( 0 days ) from ${x_current_time} on ${x_yesterday_date}\n" if (!$customer_no_comments);
            print LICFILE "INCREMENT ${core_id} ${x_flexlm_daemon} ${customer_contract_end} " .
                          "${expireOnDate} uncounted 0 ISSUER=\"${x_flexlm_issuer}\" ";
            print LICFILE "VENDOR_STRING=\"License_Type:${licenseType};${customer_email_address},${core_id},ip,permanent,_0_0_0\" ";
            print LICFILE "HOSTID=\"@flex_hostids\" ";
                     
            if ( !$customer_no_notice ) {
               my $notestr = ( $nstr eq '' ) ? '' : "NOTICE=\"${nstr}\"";
               print LICFILE "${notestr} ";
            }
                     
            print LICFILE "START=\"${x_yesterday_date}\" ";
            print LICFILE "TS_OK\n";
         }
         else
         {
            print("Generating FEATURE $core_id ($licenseType) in license file ${x_flexlm_file}\n");

            print LICFILE "# Licenses for ${core_id}\n" if (!$customer_no_comments);
            print LICFILE "FEATURE ${core_id} ${x_flexlm_daemon} ${x_flexlm_version} " .
                          "${expireOnDate} uncounted 0 ISSUER=\"${x_flexlm_issuer}\" ";
            print LICFILE "VENDOR_STRING=\"License_Type:${licenseType}\" ";
            print LICFILE "HOSTID=\"@flex_hostids\" ";
                     
            if ( !$customer_no_notice ) {
               my $notestr = ( $nstr eq '' ) ? '' : "NOTICE=\"${nstr}\"";
               print LICFILE "${notestr} ";
            }
                     
            print LICFILE "TS_OK\n";
            
         }
         print LICFILE "#\n" if (!$customer_no_comments);
         
      }# end foreach $core_id

   } # end foreach $coreset_id

   print LICFILE "# ----- REMOVE LINES BELOW HERE --------------------------\n" if (!$customer_no_comments);
   close(LICFILE);

   my $cmd = "${x_lmcrypt_cmd} ${x_flexlm_file}";
   my $ret = system($cmd);
   if ( $ret )
   {
      &debugInfo("Error:\tfailed (6) to execute ($cmd): $ret($!)");
      &dieNicely("Error:\tcannot generate FLEXlm license.\n");
   }

   chmod (0644, "${x_flexlm_file}") 
      or &dieNicely("Error:\tcannot modify file permission of ${x_flexlm_file}\n");

}# createClientFlexlmLicense

# create a network FLEXlm license file to containing all license
# features by lgm itself
# ---------------------------------------------------------------
sub createServerFlexlmLicense()
{ 
   # get the hostid of server machine, if multiple supplied, only the first one will be used.
   my @flex_hostids = &getFlexHostIds(); # array of hostids passed in by user

   my $serverhostid = $flex_hostids[0];

   # make sure we have enough servers for three-server redundant servers license
   if ( $customer_3server && @flex_hostids < 3 )
   {
      # three-server redundant servers license must have 3 server ids
      &dieNicely("Error: FLEXlm network license requires 3 valid hostids\n");
   }# if

   # name of server license file
   my $x_flexlm_file =  &getLicenseFilename($core_id);
      $x_flexlm_file =~ s/\.lic/\.dat/; # rename server *.lic to *.dat to avoid naming conflict
   
   if ( -e "${x_flexlm_file}" && !exists($new_output_files{"${x_flexlm_file}"}) ) 
   {
      print ("Deleting ${x_flexlm_file} as already exists\n");
      File::Path::rmtree("${x_flexlm_file}") 
         or &dieNicely("Error:\tcannot delete file ${x_flexlm_file}\n");
   }

   # Network Flexlm license file
   open(LICFILE, "> ${x_flexlm_file}") 
      or &dieNicely("Error:\tfailed to open ${x_flexlm_file}: $!\n");

   $new_output_files{"${x_flexlm_file}"} = (); # register new output file

   print LICFILE "# ----- REMOVE LINES ABOVE HERE --------------------------\n" if (!$customer_no_comments);
   print LICFILE "#\n" if (!$customer_no_comments);
   print LICFILE "#\n" if (!$customer_no_comments);

   # three-server redundent servers FLEXlm license
   if ( $customer_3server )
   {
      # only first three ids will be used as redundent servers
      for ( my $i = 0; $i < 3; $i++ )
      {
         print LICFILE "SERVER Xilinx_SERVER$i $flex_hostids[$i] SERVER_PORT\n";
         print LICFILE "#\n" if (!$customer_no_comments);
      }# foreach
   }
   # single server network FLEXlm license
   else
   {
      print LICFILE "SERVER Xilinx_SERVER $serverhostid SERVER_PORT\n";
      print LICFILE "#\n" if (!$customer_no_comments);
   }# if-else

   print LICFILE "USE_SERVER\n";
   print LICFILE "#\n" if (!$customer_no_comments);
   print LICFILE "VENDOR ${x_flexlm_daemon}\n";
   print LICFILE "#\n" if (!$customer_no_comments);

   foreach $coreset_id ( @customer_requested_core )
   {
      my @core_ids = &getCoreIds($coreset_id); # array of core ids to be resolved
      foreach my $core_id ( @core_ids ) # e.g. lte_ul_channel_decoder_v1{tcc_decoder_3gpplte_v1} aurora_v3 ...
      {
         my $licenseType  = &getLicenseType($coreset_id, $core_id);
         my $expireOnDate = &getFlexExpireDate($licenseType);

         my $nstr = &getFlexNotice($core_id);

         if ( $core_id eq &getNefName($core_id) ) 
         {
            print("Generating INCREMENT $core_id ($licenseType) in license file ${x_flexlm_file}\n");

            print LICFILE "# This license is valid for permanent ( 0 days ) from ${x_current_time} on ${x_yesterday_date}\n" if (!$customer_no_comments);
            print LICFILE "INCREMENT ${core_id} ${x_flexlm_daemon} ${customer_contract_end} " .
                          "${expireOnDate} 9999 0 ISSUER=\"${x_flexlm_issuer}\" " .
                          "VENDOR_STRING=\"License_Type:${licenseType};${customer_email_address},${core_id},ip,permanent,_0_0_0\" ";
                     
            if ( !$customer_no_notice ) {
               my $notestr = ( $nstr eq '' ) ? '' : "NOTICE=\"${nstr}\"";
               print LICFILE "${notestr} ";
            }
                     
            print LICFILE "START=\"${x_yesterday_date}\" ";
            print LICFILE "\n";
         }
         else
         {
            print("Generating FEATURE $core_id ($licenseType) in license file ${x_flexlm_file}\n");

            print LICFILE "# Licenses for ${core_id}\n" if (!$customer_no_comments);
            print LICFILE "FEATURE ${core_id} ${x_flexlm_daemon} ${x_flexlm_version} " .
                           "${expireOnDate} 9999 0 ISSUER=\"${x_flexlm_issuer}\" " .
                           "VENDOR_STRING=\"License_Type:${licenseType}\" ";

            if ( !$customer_no_notice ) {
               my $notestr = ( $nstr eq '' ) ? '' : "NOTICE=\"${nstr}\"";
               print LICFILE "${notestr} ";
            }

            print LICFILE "\n";
         }

         print LICFILE "#\n" if (!$customer_no_comments);
         
      }# end foreach $core_id
 
   }# end foreach $coreset_id

   print LICFILE "# ----- REMOVE LINES BELOW HERE --------------------------\n" if (!$customer_no_comments);
   close(LICFILE);

   my $cmd = "${x_lmcrypt_cmd} ${x_flexlm_file}";
   my $ret = system($cmd);
   if ( $ret )
   {
      &debugInfo("Error:\tfailed (6) to execute ($cmd): $ret($!)");
      &dieNicely("Error:\tcannot generate FLEXlm license.\n");
   }

   chmod (0644, "${x_flexlm_file}") 
      or &dieNicely("Error:\tcannot modify file permission of ${x_flexlm_file}\n");

}# createServerFlexlmLicense

# create readme file to be bundled with zip package
# ---------------------------------------------------------------
sub createReadme()
{  
   my $outputDir = &getOutputDirectory();

   my $freadme;
   if ( ! $customer_no_genid ) {
      $freadme .= "${x_generation_id}_";
   }
   $freadme .= 'README.txt';

   if ( -e "${outputDir}/${freadme}" ) 
   {
      print ("Deleting ${outputDir}/${freadme} as already exists\n");
      File::Path::rmtree("${outputDir}/${freadme}") 
         or &dieNicely("Error:\tcannot delete file ${outputDir}/${freadme}\n");
   }

   print("Generating ${outputDir}/${freadme}\n"); 

   open(RMFILE, "> ${outputDir}/${freadme}") 
      or &dieNicely("Error:\tfailed to open ${outputDir}/${freadme}: $!\n");

   $new_output_files{"${outputDir}/${freadme}"} = (); # register new output file

   open(RMSRC, "< ${x_readme_file}") 
      or &dieNicely("Error:\tcannot open readme file: ${x_readme_file}\n");

   # the following two lines are to avoid multi-openning problems...
   flock(RMSRC, 2);   
   seek(RMSRC, 0, 0);

   my @rmtext = <RMSRC>;
   foreach my $rline ( @rmtext )
   {
      if ( $rline =~ /%HOSTID%/ )
      {
         my @flex_hostids = &getFlexHostIds(); # array of hostids passed in by user
         $rline =~ s/%HOSTID%/@flex_hostids/;
      }# if

      if ( $rline =~ /^\s*%CORELICENSELIST%\s*$/ )
      {
         $rline =~ s/^\s*%CORELICENSELIST%\s*$/\r\n${rhead}/;
         formline "   @<<<<<<<<<<<<<<<<<<<<<<<<\t@<<<<<<<<<<<<<<<<<<\t@<<<<<<<<<<<<\t@<<<<<<<<<<<\r\n", "License Feature", "License Level", "License Type", "Expiry Date";
         formline "   @<<<<<<<<<<<<<<<<<<<<<<<<\t@<<<<<<<<<<<<<<<<<<\t@<<<<<<<<<<<<\t@<<<<<<<<<<<\r\n", "===============", "=============", "============", "===========";
        
         foreach my $coreset_id ( @customer_requested_core )
         {
            my @core_ids = &getCoreIds($coreset_id); # array of core ids to be resolved
            foreach my $core_id ( @core_ids )
            {
               my $rtype = "node-locked";
               
               my $licenseType  = &getLicenseType($coreset_id, $core_id);
               my $expireOnDate = &getFlexExpireDate($licenseType);

               formline "   @<<<<<<<<<<<<<<<<<<<<<<<<\t@<<<<<<<<<<<<<<<<<<\t@<<<<<<<<<<<<\t@<<<<<<<<<<<\r\n", $core_id, $licenseType, $rtype, $expireOnDate;
            }

         }# end foreach $coreset_id

         $rline .= "$^A";

      }# if

      print RMFILE $rline;

   }# foreach
   close(RMSRC);
   close(RMFILE);

}# createReadme

# print out debug information
# ---------------------------------------------------------------
sub debugInfo()
{
   my $x_error_log = ${x_cwd_dir} . '/' . 'lgm_port.log';
   if ( ${TOOLDEBUG} )
   {
      open(LOG, ">> ${x_error_log}") or &dieNicely("Error:\tcannot open error log file - '${x_error_log}' $!\n");
      print LOG "[${x_current_date} at ${x_current_time}]\t@_";
      print     "@_";
      close(LOG);
   }# if

}# debugInfo

# die nicely by calling finalize before die
# ---------------------------------------------------------------
sub dieNicely()
{
   my ( $err_msg ) = @_;

   print STDERR "${err_msg}";

   # tidy up after self...
   my $outputDir = &getOutputDirectory();

   my @files = keys(%new_output_files);
   foreach my $file ( @files ) 
   {
      print ("Deleting $file as an error occurred\n");
      File::Path::rmtree("$file") 
         or &dieNicely("Error:\tcannot delete file $file\n");
   }

   exit 1;
}# dieNicely
