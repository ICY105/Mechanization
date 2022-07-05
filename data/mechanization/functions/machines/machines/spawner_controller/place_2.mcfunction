
execute if block ~ ~ ~ minecraft:spawner align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {Tags:["mechanization.new", "mechanization.spawner_controller", "mechanization.redstone_control", "energy.receive", "smithed.block"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6422019}}]}
execute if block ~ ~ ~ minecraft:spawner run function mechanization:base/utils/init_machine
execute if block ~ ~ ~ minecraft:spawner run scoreboard players set #loop mechanization.data -1

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. if block ~ ~ ~ #du:air positioned ^ ^ ^0.05 run function mechanization:machines/machines/spawner_controller/place_2
