# Example extension

A simple plugin example
This plugin does absolutely nothing. Its meant to show the OCS' extension engine possibilities.

Webconsole related files :

Intro, explain use cases ?

* install.php > Creates a new plugin table in OCS database / destroy it on removal of the plugin.
* infos.json > Stores general informations about plugin, such as name, author, version, etc. These will be displayed on https://plugins.ocsinventory-ng.org/.
* hook.xml > Creates a new hook which lets OCS know a new plugin has been installed and new data should be displayed on the web console. It can create computer details entries or menu / sub-menu. Languages are also managed from there.
* cd_xxxxx > 
* ms_xxxxx >

Communication server related files :

Intro, explain use cases ?

* APACHE > Map.pm > idk
* APACHE > plugin_ex.conf > Apache configuration file for the plugin

Misc :

Intro, explain use cases ?

* agent > This folder is only used to store the agent scripts, it is not required on the server's side. 

