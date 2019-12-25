
function mechanization:base/utils/register_ores
schedule function mechanization:install 2s

execute unless data storage mechanization:networks quantum run data merge storage mechanization:networks {quantum:[]}
execute unless data storage mechanization:networks teleporter run data merge storage mechanization:networks {teleporter:[]}