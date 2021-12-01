
playsound minecraft:block.piston.contract block @a ~ ~ ~ 1 0.7
execute if score @s mechanization.data matches 0..3 store success entity @s[tag=mech_super_piston] Item.tag.CustomModelData int 6422020 if entity @s
execute if score @s mechanization.data matches 4 store success entity @s[tag=mech_super_piston] Item.tag.CustomModelData int 6422913 if entity @s
execute if score @s mechanization.data matches 5 store success entity @s[tag=mech_super_piston] Item.tag.CustomModelData int 6422915 if entity @s
execute if score @s mechanization.data matches 0..3 store success entity @s[tag=mech_super_sticky_piston] Item.tag.CustomModelData int 6422021 if entity @s
execute if score @s mechanization.data matches 4 store success entity @s[tag=mech_super_sticky_piston] Item.tag.CustomModelData int 6422918 if entity @s
execute if score @s mechanization.data matches 5 store success entity @s[tag=mech_super_sticky_piston] Item.tag.CustomModelData int 6422920 if entity @s

execute if score @s mechanization.data matches 0 rotated 90 0 positioned ^ ^ ^1 if block ~ ~ ~ piston_head run setblock ~ ~ ~ air
execute if score @s mechanization.data matches 1 rotated 0 0 positioned ^ ^ ^1 if block ~ ~ ~ piston_head run setblock ~ ~ ~ air
execute if score @s mechanization.data matches 2 rotated 270 0 positioned ^ ^ ^1 if block ~ ~ ~ piston_head run setblock ~ ~ ~ air
execute if score @s mechanization.data matches 3 rotated 180 0 positioned ^ ^ ^1 if block ~ ~ ~ piston_head run setblock ~ ~ ~ air
execute if score @s mechanization.data matches 4 rotated 0 -90 positioned ^ ^ ^1 if block ~ ~ ~ piston_head run setblock ~ ~ ~ air
execute if score @s mechanization.data matches 5 rotated 0 90 positioned ^ ^ ^1 if block ~ ~ ~ piston_head run setblock ~ ~ ~ air

execute if score @s[tag=mech_super_sticky_piston] mechanization.data matches 0 rotated 90 0 if block ^ ^ ^1 #du:air unless block ^ ^ ^2 #mechanization:piston_nopush run function mechanization:machines/machines/super_piston/piston_contract_2
execute if score @s[tag=mech_super_sticky_piston] mechanization.data matches 1 rotated 0 0 if block ^ ^ ^1 #du:air unless block ^ ^ ^2 #mechanization:piston_nopush run function mechanization:machines/machines/super_piston/piston_contract_2
execute if score @s[tag=mech_super_sticky_piston] mechanization.data matches 2 rotated 270 0 if block ^ ^ ^1 #du:air unless block ^ ^ ^2 #mechanization:piston_nopush run function mechanization:machines/machines/super_piston/piston_contract_2
execute if score @s[tag=mech_super_sticky_piston] mechanization.data matches 3 rotated 180 0 if block ^ ^ ^1 #du:air unless block ^ ^ ^2 #mechanization:piston_nopush run function mechanization:machines/machines/super_piston/piston_contract_2
execute if score @s[tag=mech_super_sticky_piston] mechanization.data matches 4 rotated 0 -90 if block ^ ^ ^1 #du:air unless block ^ ^ ^2 #mechanization:piston_nopush run function mechanization:machines/machines/super_piston/piston_contract_2
execute if score @s[tag=mech_super_sticky_piston] mechanization.data matches 5 rotated 0 90 if block ^ ^ ^1 #du:air unless block ^ ^ ^2 #mechanization:piston_nopush run function mechanization:machines/machines/super_piston/piston_contract_2

