
#register ores
function mechanization:base/utils/register_ores

#setup filter box
setblock -29999999 1 1601 green_shulker_box

#schedule message
schedule function mechanization:install 2s