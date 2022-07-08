
execute if entity @s[tag=!player_action.sneaking] align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] at @s run function #mechanization:gps_transfer_cords
execute if entity @s[tag=player_action.sneaking] run function mechanization:base/player/gps/store_pos

# End Loop
scoreboard players set #loop mechanization.data -1
