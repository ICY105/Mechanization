
data modify storage mechanization:temp list append from entity @s Inventory[{Slot:101b}]
execute store result score #value mechanization.data run data get entity @s Inventory[{Slot:101b}].tag.mechanization.upgrades.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data

execute store result score #damage mechanization.data run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute if score #damage mechanization.data matches 1.. run item replace block -30000000 0 3201 container.0 from entity @s armor.legs
execute if score #damage mechanization.data matches 1.. if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #damage mechanization.data matches 1.. run item replace entity @s armor.legs from block -30000000 0 3201 container.0
execute if score #damage mechanization.data matches 1.. run item modify entity @s armor.legs mechanization:remove_damage
