
execute if block ~ ~ ~ minecraft:spawner align xyz unless entity @e[type=item_display,tag=mechanization.spawner_controller,dx=0,dy=0,dz=0] run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["mechanization", "mechanization.new", "mechanization.spawner_controller", "mechanization.upgradable", "mechanization.redstone_control", "energy.receive", "smithed.block"],item_display:"head",item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6422019}}}
execute if block ~ ~ ~ minecraft:spawner run function mechanization:base/utils/init_machine
execute if block ~ ~ ~ minecraft:spawner run scoreboard players set #loop mechanization.data -1

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. if block ~ ~ ~ #mechanization:air positioned ^ ^ ^0.05 run function mechanization:machines/blocks/spawner_controller/place_2
