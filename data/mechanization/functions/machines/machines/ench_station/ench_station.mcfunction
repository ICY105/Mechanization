
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute unless score @s mech_fluid matches -2147483648.. store result score @s mech_fluid run data get entity @s Item.tag.mech_fluid

### Main
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 25

#ui
execute if data block ~ ~ ~ Items[{Slot:6b}] run function mechanization:machines/machines/ench_station/tank_input
function mechanization:machines/machines/ench_station/gui

#function
execute if entity @s[tag=!mech_upgrade_nether,scores={mech_power=1000..}] if data block ~ ~ ~ Items[{Slot:10b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:enchanted_book"}] unless data block ~ ~ ~ Items[{Slot:14b}] run function mechanization:machines/machines/ench_station/add_enchant
execute if entity @s[tag=mech_upgrade_nether,scores={mech_power=1000..}] if data block ~ ~ ~ Items[{Slot:10b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:enchanted_book"}] unless data block ~ ~ ~ Items[{Slot:14b}] run function mechanization:machines/machines/ench_station/add_overenchant
execute if entity @s[tag=mech_upgrade_ender,scores={mech_power=1000..}] if data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}] unless data block ~ ~ ~ Items[{Slot:14b}] run function mechanization:machines/machines/ench_station/disenchant

## store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s Item.tag.mech_fluid int 1 run scoreboard players get @s mech_fluid

#cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t3
