execute if block ~ ~ ~ spawner align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags:["mech_spawner_controller","mech_receiver"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6422019}}]}
execute if block ~ ~ ~ spawner run scoreboard players set @e[tag=mech_spawner_controller,distance=..0.25] mechanization.stored_energy 0
execute if block ~ ~ ~ spawner run scoreboard players set in_0 mechanization.data -1

scoreboard players remove in_0 mechanization.data 1
execute if score in_0 mechanization.data matches 1.. if block ~ ~ ~ #du:air positioned ^ ^ ^0.05 run function mechanization:machines/tools/spawner_mover/place_spawner_controller_2
