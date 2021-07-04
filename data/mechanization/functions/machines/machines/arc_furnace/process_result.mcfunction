
#copy data
data modify storage du:temp obj set value {input_item:{},fluid_item:{}}
data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage du:temp obj.fluid_item set from entity @s Item.tag.tank

item replace block -29999999 0 1601 container.0 with minecraft:air

#check recipes
execute if entity @s[tag=!mech_upgrade_nether] unless data storage du:temp obj.input_item.tag.ctc.traits run function mechanization:machines/machines/arc_furnace/process_result_vanilla
execute if entity @s[tag=!mech_upgrade_ender] unless data storage du:temp obj.input_item.tag.ctc.traits run function mechanization:machines/machines/arc_furnace/process_result_vanilla_misc
execute if entity @s[tag=!mech_upgrade_nether] if data storage du:temp obj.input_item.tag.ctc.traits{raw:1b} run function mechanization:machines/machines/arc_furnace/process_result_raw
execute if entity @s[tag=!mech_upgrade_nether] if data storage du:temp obj.input_item.tag.ctc.traits{raw_packed:1b} run function mechanization:machines/machines/arc_furnace/process_result_raw_block
execute if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if data storage du:temp obj.input_item.tag.ctc.traits{ingot:1b} run function mechanization:machines/machines/arc_furnace/process_result_ingot
execute if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if data storage du:temp obj.input_item.tag.ctc.traits{packed:1b} run function mechanization:machines/machines/arc_furnace/process_result_block
execute if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if data storage du:temp obj.input_item.tag.ctc.traits{nugget:1b} run function mechanization:machines/machines/arc_furnace/process_result_nugget

#cleanup
execute if data block -29999999 0 1601 Items[{Slot:0b}] run data modify entity @s Item.tag.tank set from block -29999999 0 1601 Items[0]
item modify block ~ ~ ~ container.3 mechanization:decrement_count
