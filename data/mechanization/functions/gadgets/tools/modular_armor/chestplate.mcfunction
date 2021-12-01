
data modify storage du:temp list append from entity @s Inventory[{Slot:102b}]
execute store result score $temp_0 mechanization.data run data get entity @s Inventory[{Slot:102b}].tag.mech_upgrades.shield
scoreboard players operation $in_1 mechanization.data += $temp_0 mech_data

execute store result score $in_0 mechanization.data run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute if score $in_0 mechanization.data matches 1.. run item replace block -29999999 0 1601 container.0 from entity @s armor.chest
execute if score $in_0 mechanization.data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/tools/damage_upgrades
execute if score $in_0 mechanization.data matches 1.. run item replace entity @s armor.chest from block -29999999 0 1601 container.0
execute if score $in_0 mechanization.data matches 1.. run item modify entity @s armor.chest mechanization:remove_damage

#effects
execute if data entity @s Inventory[{Slot:102b}].tag.mech_upgrades.items[].tag.mech_upgrade{effect:"jetpack"} unless entity @s[nbt={FallFlying:1b}] run function mechanization:gadgets/tools/modular_armor/flight
