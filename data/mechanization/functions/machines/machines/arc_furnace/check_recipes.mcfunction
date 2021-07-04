
#copy data
data modify storage du:temp obj set value {input_item:{},fluid_item:{}}
data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:3b}]
data modify storage du:temp obj.fluid_item set from entity @s Item.tag.tank

#check recipes
execute if entity @s[tag=!mech_upgrade_nether] unless data storage du:temp obj.input_item.tag.ctc.traits run function mechanization:machines/machines/arc_furnace/check_recipes_vanilla
execute if entity @s[tag=!mech_upgrade_ender] unless data storage du:temp obj.input_item.tag.ctc.traits run function mechanization:machines/machines/arc_furnace/check_recipes_vanilla_misc
execute if entity @s[tag=!mech_upgrade_nether] if data storage du:temp obj.input_item.tag.ctc.traits{raw:1b} run function mechanization:machines/machines/arc_furnace/check_recipes_raw
execute if entity @s[tag=!mech_upgrade_nether] if data storage du:temp obj.input_item.tag.ctc.traits{raw_packed:1b} run function mechanization:machines/machines/arc_furnace/check_recipes_raw_block
execute if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if data storage du:temp obj.input_item.tag.ctc.traits{ingot:1b} run function mechanization:machines/machines/arc_furnace/check_recipes_ingot
execute if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if data storage du:temp obj.input_item.tag.ctc.traits{packed:1b} run function mechanization:machines/machines/arc_furnace/check_recipes_block
execute if entity @s[tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if data storage du:temp obj.input_item.tag.ctc.traits{nugget:1b} run function mechanization:machines/machines/arc_furnace/check_recipes_nugget
