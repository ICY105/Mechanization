
# shield cap
scoreboard players set #shield mechanization.data 0


data modify storage mechanization:temp list2 set value []
item replace block -30000000 0 3201 container.0 from entity @s armor.head
execute if data block -30000000 0 3201 Items[0].tag.mechanization.upgrades{type:3b} run function mechanization:gadgets/player/modular_armor/helmet
item replace block -30000000 0 3201 container.0 from entity @s armor.chest
execute if data block -30000000 0 3201 Items[0].tag.mechanization.upgrades{type:3b} run function mechanization:gadgets/player/modular_armor/chestplate
item replace block -30000000 0 3201 container.0 from entity @s armor.legs
execute if data block -30000000 0 3201 Items[0].tag.mechanization.upgrades{type:3b} run function mechanization:gadgets/player/modular_armor/leggings
item replace block -30000000 0 3201 container.0 from entity @s armor.feet
execute if data block -30000000 0 3201 Items[0].tag.mechanization.upgrades{type:3b} run function mechanization:gadgets/player/modular_armor/boots

# illuminating
execute if score #timer.20 mechanization.data matches 0 if data storage mechanization:temp list2[].tag.mechanization.upgrade.items[].tag.mechanization.upgrade{effect:"illuminating"} run effect give @s minecraft:glowing 2 0 true

# shield
execute if score #timer.100 mechanization.data matches 0 if score #shield mechanization.data matches 1.. run function mechanization:gadgets/player/modular_armor/shield
execute if score #timer.100 mechanization.data matches 49 if score #shield mechanization.data matches 1.. run function mechanization:gadgets/player/modular_armor/shield
