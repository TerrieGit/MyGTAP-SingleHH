# MyGTAP Single Household RunGTAP application

MyGTAP Single household program is a set of files used to convert a RunGTAP GTAP 6 model application into 
a MyGTAP application.  

Documentation:
Walmsley, T. L. and P. Minor, (2016). "The MyGTAP Single Household program", ImpactECON Program 
and data Doctumentation, No.005, ImpactECON: Boulder, CO

Walmsley, T. L. and P. Minor, (2013). "MyGTAP Model", ImpactECON Working Paper No. 02, 
ImpactECON: Boulder [file:///C:/Projects/TerrieGit.github.io/papers_files/Working-Paper-002-MyGTAP-Model.pdf](https://terriegit.github.io/papers_files/Working-Paper-002-MyGTAP-Model.pdf)

Issues:
- the application contains a file extradata0.har that contains 2014 data for GTAP version 10.  If you would like to 
update this data, you can use the python program available at https://github.com/TerrieGit/MyGTAP-Extradat to create an 
excel file containing the data needed.  The excel data can then be copied and pasted into extradata0.har and saved to update 
the year and version.
- this is based on the GTAP 6 Model. 
