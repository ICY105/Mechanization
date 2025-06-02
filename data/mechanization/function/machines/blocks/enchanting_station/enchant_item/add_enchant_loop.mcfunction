
scoreboard players remove #loop mechanization.data 1

execute store result storage mechanization:temp obj.pointer int 1 run scoreboard players get #loop mechanization.data
function mechanization:machines/blocks/enchanting_station/enchant_item/m.get_enchantment_by_index with storage mechanization:temp obj

function mechanization:machines/blocks/enchanting_station/enchant_item/m.get_target_level with storage mechanization:temp obj.enchantment
function mechanization:machines/blocks/enchanting_station/enchant_item/m.get_source_level with storage mechanization:temp obj.enchantment

execute if entity @s[tag=!mechanization.upgraded.nether] store result score #max_level mechanization.data run data get storage mechanization:temp obj.enchantment.max_level
execute if entity @s[tag=mechanization.upgraded.nether] store result score #max_level mechanization.data run data get storage mechanization:temp obj.enchantment.boost_level
execute if score #source_level mechanization.data matches 1.. if score #target_level mechanization.data <= #source_level mechanization.data if score #target_level mechanization.data < #max_level mechanization.data run function mechanization:machines/blocks/enchanting_station/enchant_item/add_enchant_2

# loop
execute if score #loop mechanization.data matches 1.. run function mechanization:machines/blocks/enchanting_station/enchant_item/add_enchant_loop
