
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

execute if score @s[tag=mech_upgraded] mech_timer matches 3.. run scoreboard players operation @s mech_timer *= $cons.3 du_data
execute if score @s[tag=mech_upgraded] mech_timer matches 3.. run scoreboard players operation @s mech_timer /= $cons.4 du_data

#calculate needed power
scoreboard players operation $temp_0 mech_data = $machines.cf.arc_furnace.power mech_data
scoreboard players operation $temp_0 mech_data *= @s mech_timer
execute if score @s mech_power < $temp_0 mech_data run scoreboard players set @s mech_timer 0
