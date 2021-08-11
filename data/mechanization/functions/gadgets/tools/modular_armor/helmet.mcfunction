
data modify storage du:temp list append from entity @s Inventory[{Slot:103b}]
execute store result score $temp_0 mech_data run data get entity @s Inventory[{Slot:103b}].tag.mech_upgrades.shield
scoreboard players operation $in_1 mech_data += $temp_0 mech_data

execute store result score $in_0 mech_data run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute if score $in_0 mech_data matches 1.. run item replace block -29999999 0 1601 container.0 from entity @s armor.head
execute if score $in_0 mech_data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/tools/damage_upgrades
execute if score $in_0 mech_data matches 1.. run item replace entity @s armor.head from block -29999999 0 1601 container.0
execute if score $in_0 mech_data matches 1.. run item modify entity @s armor.head mechanization:remove_damage
