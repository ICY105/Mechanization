execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ sand run setblock ~ ~ ~ glass
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ red_sand run setblock ~ ~ ~ red_stained_glass
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ cobblestone run setblock ~ ~ ~ stone

execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ oak_log run setblock ~ ~ ~ stripped_oak_log
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ spruce_log run setblock ~ ~ ~ stripped_spruce_log
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ birch_log run setblock ~ ~ ~ stripped_birch_log
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ jungle_log run setblock ~ ~ ~ stripped_jungle_log
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ acacia_log run setblock ~ ~ ~ stripped_acacia_log
execute if score $compat.config.plasma_smelt mech_data matches 0 if block ~ ~ ~ dark_oak_log run setblock ~ ~ ~ stripped_dark_oak_log

kill @s
