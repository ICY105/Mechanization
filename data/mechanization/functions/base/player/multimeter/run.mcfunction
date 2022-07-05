
execute if entity @s[tag=!player_action.sneaking] align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] at @s run function #mechanization:multimeter_readout
execute if entity @s[tag=player_action.sneaking] align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mechanization.redstone_control] at @s run function mechanization:base/player/multimeter/change_redstone

# End Loop
scoreboard players set #loop mechanization.data -1
