# MyGTAP-SingleHH
MyGTAP Single Household RunGTAP application

MyGTAP Single household program is a set of files used to convert a RunGTAP GTAP 6 model application into 
a MyGTAP application.  

Documentation:
Walmsley, T. L. and P. Minor, (2016). "The MyGTAP Single Household program", ImpactECON Program 
and data Doctumentation, No.005, ImpactECON: Boulder, CO (https://terriegit.github.io/papers_files/Single-HHLD-MyGTAP-documenation.pdf)

Walmsley, T. L. and P. Minor, (2013). "MyGTAP Model", ImpactECON Working Paper No. 02, 
ImpactECON: Boulder (https://terriegit.github.io/papers_files/Working-Paper-002-MyGTAP-Model.pdf)

Issues:
- the application contains a file extradata0.har that contains 2014 data for GTAP version 10.  If you would like to 
update this data, you can use the python program available at https://github.com/TerrieGit/MyGTAP-Extradat to create an 
excel file containing the data needed.  The excel data can then be copied and pasted into extradata0.har and saved to update 
the year and version.
- this is based on the GTAP 6 Model. 

To run:
- you will need to supply a GTAP database that is consistent with the GTAP 6 Model.  This can be obtained from GTAPAgg.
- you will also need to ensure you havbe a correct version of extradat0.har.  This can be created using data obtained from
The MyGTAP-Extra (https://github.com/TerrieGit/MyGTAP-Extradat) python program.

The Branch (MyGTAPsh-GTAP-v6-Data-v12) contains changes that allows you to use the GTAP v12 database header VBFP (extra BoP data) 
to populate extradat0.har. This fixes one of the issues noted above.  Note that this heade is in the GTAPv7 basedata.  This model uses GTAPv6 
data, as well as that header VBFP from the GTAPv7 basedata.har file. 
