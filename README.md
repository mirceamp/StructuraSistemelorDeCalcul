# StructuraSistemelorDeCalcul
Laboratoarele de SSC

Directorarele contin codul si proiectarile hardware din cadrul fiecarui laborator.
In folderul boards sunt definitiile placutelor. Aici sunt definitiile pentru placi care contin cipul Zync precum zybo 7000, zybo z20, dar si pentru placi care au doar FPGA cum ar fi basys3. 
Copiati continutul acestui director in folderul boards din directorul: 
HardDisk-ul unde ati instalat:\Xilinx\Vivado\2024.1\data\boards

Daca nu copiati continutul folderului boards, in directorul mentionat, nu veti putea dezvolta aplicatii pentru placile Zybo. Dupa instalare, aceste fisiere NU apar implicit in Vivado.
Alternativ puteti instala placile pe care doriti sa lucrati de pe site-ul producatorilor sau din repositori-ul de git al acestora. Dupa adaugarea folderului boards in Vivado, restartati calculatorul si redeschideti mediul Vivado.


##Atentie!

Proiectele din acest repo au fost realizate pentru placa Zybo 7000 care contine un SoC Zynq, daca veti dori sa utilizati aceste proiecte pe alte placute va trebui sa schimbati placa din Vivado, sa generati din nou bitstreamul pentru noua placa, si sa exportati hardware-ul (fisierul *.xsa) incluzand noul bitstream. De asemenea, platforma din vitis va trebui sa fie construita pe baza fisierului *.xsa al placii pe care o folositi, iar aplicatia embedded va trebui sa o modificati sa foloseasca platforma creata.