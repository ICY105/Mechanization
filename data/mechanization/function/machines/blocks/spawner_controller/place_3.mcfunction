
execute align xyz if entity @e[type=minecraft:item_display,tag=mechanization.spawner_controller,dx=0,dy=0,dz=0] run return fail
execute align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {item:{id:"minecraft:blast_furnace",components:{"minecraft:item_model":"mechanization:machines/block/spawner_controller"},count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.spawner_controller", "mechanization.upgradable", "mechanization.observable", "mechanization.redstone_control", "energy.receive", "smithed.block"]}

function mechanization:base/utils/init_machine
scoreboard players set #loop mechanization.data -1
