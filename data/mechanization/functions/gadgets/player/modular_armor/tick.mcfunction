
# shield cap
scoreboard players set #shield mechanization.data 0

data modify storage mechanization:temp list set value []
execute if data entity @s Inventory[{Slot:103b}].tag.mechanization.upgrade{type:3b} run function mechanization:gadgets/player/modular_armor/helmet
execute if data entity @s Inventory[{Slot:102b}].tag.mechanization.upgrade{type:3b} run function mechanization:gadgets/player/modular_armor/chestplate
execute if data entity @s Inventory[{Slot:101b}].tag.mechanization.upgrade{type:3b} run function mechanization:gadgets/player/modular_armor/leggings
execute if data entity @s Inventory[{Slot:100b}].tag.mechanization.upgrade{type:3b} run function mechanization:gadgets/player/modular_armor/boots

# illuminating
execute if score #timer.20 mechanization.data matches 0 if data storage mechanization:temp list[].tag.mechanization.upgrade.items[].tag.mechanization.upgrade{effect:"illuminating"} run effect give @s minecraft:glowing 2 0 true

# shield
execute if score #timer.100 mechanization.data matches 0 if score #shield mechanization.data matches 1.. run function mechanization:gadgets/player/modular_armor/shield
execute if score #timer.100 mechanization.data matches 49 if score #shield mechanization.data matches 1.. run function mechanization:gadgets/player/modular_armor/shield
