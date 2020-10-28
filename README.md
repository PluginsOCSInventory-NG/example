# example
A simple plugin example
This plugin does absolutely nothing but display a new blank table on web console.

Detail of files :
install.php > Creates a new plugin table in OCS database / destroy it on removal of the plugin.
infos.json > Stores general informations about plugin, such as name, author, version, etc. These will be displayed on https://plugins.ocsinventory-ng.org/.
hook.xml > Creates a new hook which lets OCS know a new plugin has been installed and new data should be displayed on the web console.

cd_plugin_name > cd_plugin_name.php > Displays result of SQL request in a new table. If current settings of hook.xml were left untouched, this can be found under 'All computers > Computer > Miscellaneous'.

APACHE > Map.pm > idk
APACHE > plugin_ex.conf > Apache configuration file for the plugin

agent > This folder is only used to store the agent scripts, it is not required on the server's side. 