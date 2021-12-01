
#get needed state
scoreboard players set $temp_1 mech_data 0
execute if block ~ ~ ~ #mechanization:drill/hoe run scoreboard players set $temp_1 mech_data 1
execute if block ~ ~ ~ #mechanization:drill/shovel run scoreboard players set $temp_1 mech_data 2
execute if block ~ ~ ~ #mechanization:drill/axe run scoreboard players set $temp_1 mech_data 3
execute if block ~ ~ ~ #mechanization:drill/pickaxe run scoreboard players set $temp_1 mech_data 4
execute if block ~ ~ ~ #mechanization:drill/none run scoreboard players set $temp_1 mech_data 0

#change state
execute unless score $temp_0 mech_data = $temp_1 mech_data run item replace block -29999999 0 1601 container.0 from entity @s weapon.mainhand
execute unless score $temp_0 mech_data = $temp_1 mech_data if score $temp_1 mech_data matches 0 run data modify block -29999999 0 1601 Items[0].id set value "minecraft:carrot_on_a_stick"
execute unless score $temp_0 mech_data = $temp_1 mech_data if score $temp_1 mech_data matches 1 run data modify block -29999999 0 1601 Items[0].id set value "minecraft:netherite_hoe"
execute unless score $temp_0 mech_data = $temp_1 mech_data if score $temp_1 mech_data matches 2 run data modify block -29999999 0 1601 Items[0].id set value "minecraft:netherite_shovel"
execute unless score $temp_0 mech_data = $temp_1 mech_data if score $temp_1 mech_data matches 3 run data modify block -29999999 0 1601 Items[0].id set value "minecraft:netherite_axe"
execute unless score $temp_0 mech_data = $temp_1 mech_data if score $temp_1 mech_data matches 4 run data modify block -29999999 0 1601 Items[0].id set value "minecraft:netherite_pickaxe"
execute unless score $temp_0 mech_data = $temp_1 mech_data run item replace entity @s weapon.mainhand from block -29999999 0 1601 container.0

#end loop
scoreboard players set $in_0 mech_data 0
