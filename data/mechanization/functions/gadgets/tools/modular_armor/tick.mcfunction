
#shield cap
scoreboard players set $in_1 mechanization.data 0

data modify storage du:temp list set value []
execute if data entity @s Inventory[{Slot:103b}].tag.mech_upgrades{type:3b} run function mechanization:gadgets/tools/modular_armor/helmet
execute if data entity @s Inventory[{Slot:102b}].tag.mech_upgrades{type:3b} run function mechanization:gadgets/tools/modular_armor/chestplate
execute if data entity @s Inventory[{Slot:101b}].tag.mech_upgrades{type:3b} run function mechanization:gadgets/tools/modular_armor/leggings
execute if data entity @s Inventory[{Slot:100b}].tag.mech_upgrades{type:3b} run function mechanization:gadgets/tools/modular_armor/boots

#illuminating
execute if score $base.timer_20 du_data matches 0 if data storage du:temp list[].tag.mech_upgrades.items[].tag.mech_upgrade{effect:"illuminating"} run effect give @s minecraft:glowing 2 0 true

#shield
execute if score $base.timer_100 du_data matches 0 if score $in_1 mechanization.data matches 1.. run function mechanization:gadgets/tools/modular_armor/shield
execute if score $base.timer_100 du_data matches 49 if score $in_1 mechanization.data matches 1.. run function mechanization:gadgets/tools/modular_armor/shield
