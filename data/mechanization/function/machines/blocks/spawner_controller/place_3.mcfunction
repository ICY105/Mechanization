
execute align xyz if entity @e[type=minecraft:item_display,tag=mechanization.spawner_controller,dx=0,dy=0,dz=0] run return fail
execute align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["mechanization", "mechanization.new", "mechanization.spawner_controller", "mechanization.upgradable", "mechanization.redstone_control", "energy.receive", "smithed.block"],item:{id:"minecraft:blast_furnace",components:{"minecraft:custom_model_data":6422019},Count:1b}}

function mechanization:base/utils/init_machine
#execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:item_display,tag=mechanization.spawner_controller,distance=..0.2] run data modify entity @s transformation.translation set value [0.0, 0.38, 0.0]
scoreboard players set #loop mechanization.data -1
