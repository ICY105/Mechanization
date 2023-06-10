
scoreboard players set #enchants mechanization.data 0

execute store result score #level mechanization.data run data get block -30000000 0 3201 Items[0].tag.Enchantments[0].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data
execute store result score #level mechanization.data run data get block -30000000 0 3201 Items[0].tag.Enchantments[1].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data
execute store result score #level mechanization.data run data get block -30000000 0 3201 Items[0].tag.Enchantments[2].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data
execute store result score #level mechanization.data run data get block -30000000 0 3201 Items[0].tag.Enchantments[3].lvl
scoreboard players operation #enchants mechanization.data += #level mechanization.data

execute store result score #level mechanization.data run data get block -30000000 0 3201 Items[0].tag.mechanization.upgrade.enchantment_level
execute unless score #enchants mechanization.data = #level mechanization.data run data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0]
execute unless score #enchants mechanization.data = #level mechanization.data run function mechanization:gadgets/blocks/tinker_table/add_modifiers
execute unless score #enchants mechanization.data = #level mechanization.data run data modify block -30000000 0 3201 Items[0] set from storage mechanization:temp obj 
