
data modify storage mechanization:temp list append from entity @s Inventory[{Slot:102b}]
execute store result score #value mechanization.data run data get entity @s Inventory[{Slot:102b}].tag.mechanization.upgrades.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data

execute store result score #damage mechanization.data run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute if score #damage mechanization.data matches 1.. run item replace block -30000000 0 3201 container.0 from entity @s armor.chest
execute if score #damage mechanization.data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #damage mechanization.data matches 1.. run item replace entity @s armor.chest from block -30000000 0 3201 container.0
execute if score #damage mechanization.data matches 1.. run item modify entity @s armor.chest mechanization:remove_damage

# effects
execute if data entity @s Inventory[{Slot:102b}].tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"jetpack"} unless entity @s[nbt={FallFlying:1b}] run function mechanization:gadgets/player/modular_armor/flight
