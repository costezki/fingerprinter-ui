# RDF Fingerprinter
Through the dataset fingerprint you can get a glimpse of how your data is actually shaped. 
It offers an overview of what classes are instantiated with which properties and to what degree.

Based on class/property frequencies Fingerprinter also proposes Application Profiles for each class. 

This is application is an interface for RDF-fingerprint-diff project.

##Prerequisites dev environment 
* install docker
* install ssh on localhost
>sudo apt-get install openssh-server
* add current user to sudo group or NOPASSWORD sudo to emulate  
> sudo visudo 

append at the end of the file  

> userName ALL=(ALL) NOPASSWD:ALL

