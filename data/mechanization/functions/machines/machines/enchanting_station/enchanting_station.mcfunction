
# ui
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 25

execute if data block ~ ~ ~ Items[{Slot:6b}] run function mechanization:machines/machines/enchanting_station/tank_input
function mechanization:machines/machines/enchanting_station/gui

# function
execute if score @s[tag=!mechanization.upgraded.nether] energy.storage matches 1000.. if data block ~ ~ ~ Items[{Slot:10b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:enchanted_book"}] unless data block ~ ~ ~ Items[{Slot:14b}] run function mechanization:machines/machines/enchanting_station/add_enchant
execute if score @s[tag=mechanization.upgraded.nether] energy.storage matches 1000.. if data block ~ ~ ~ Items[{Slot:10b}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:enchanted_book"}] unless data block ~ ~ ~ Items[{Slot:14b}] run function mechanization:machines/machines/enchanting_station/add_overenchant
execute if score @s[tag=mechanization.upgraded.ender] energy.storage matches 1000.. if data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}] unless data block ~ ~ ~ Items[{Slot:14b}] run function mechanization:machines/machines/enchanting_station/disenchant

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t3
