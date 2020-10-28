package Apache::Ocsinventory::Plugins::example::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;
$DATA_MAP{example} = {
   mask => 0,
   multi => 1,
   auto => 1,
   delOnReplace => 1,
   sortBy => 'ID',
   writeDiff => 0,
   cache => 0,
   fields => {
        ID => {},
        HARDWARE_ID => {}
    }
};
1;