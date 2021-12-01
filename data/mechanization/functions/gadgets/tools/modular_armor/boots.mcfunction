
data modify storage du:temp list append from entity @s Inventory[{Slot:100b}]
execute store result score $temp_0 mechanization.data run data get entity @s Inventory[{Slot:100b}].tag.mech_upgrades.shield
scoreboard players operation $in_1 mechanization.data += $temp_0 mech_data

execute store result score $in_0 mechanization.data run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute if score $in_0 mechanization.data matches 1.. run item replace block -29999999 0 1601 container.0 from entity @s armor.feet
execute if score $in_0 mechanization.data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/tools/damage_upgrades
execute if score $in_0 mechanization.data matches 1.. run item replace entity @s armor.feet from block -29999999 0 1601 container.0
execute if score $in_0 mechanization.data matches 1.. run item modify entity @s armor.feet mechanization:remove_damage

#effects
execute if score $base.timer_10 du_data matches 0 if data entity @s Inventory[{Slot:100b}].tag.mech_upgrades.items[].tag.mech_upgrade{effect:"slowfall"} run function mechanization:gadgets/tools/modular_armor/slowfall
execute if data entity @s[tag=du_moving] Inventory[{Slot:100b}].tag.mech_upgrades.items[].tag.mech_upgrade{effect:"wall_walk"} run function mechanization:gadgets/tools/modular_armor/wall_walk
