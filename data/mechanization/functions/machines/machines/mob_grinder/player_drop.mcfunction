
scoreboard players set temp_1 mech_data 0
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:looting"}] run scoreboard players set temp_1 mech_data 1
execute if score temp_1 mech_data matches 1 run function du:player/inv/get_equipment
execute if score temp_1 mech_data matches 1 run replaceitem entity @s weapon.mainhand minecraft:air

execute at @e[distance=..5,type=#mechanization:mob_grinder] run loot spawn ~ ~1 ~ kill @e[distance=..0.1,type=#mechanization:mob_grinder,sort=nearest,limit=1]

execute if score temp_1 mech_data matches 1 run function du:player/inv/restore_equipment
