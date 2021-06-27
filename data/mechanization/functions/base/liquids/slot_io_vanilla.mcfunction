
### to tank

#buckets
execute if score $temp_2 mech_data matches 5 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_water
execute if score $temp_2 mech_data matches 6 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_lava
execute if score $temp_2 mech_data matches 7 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_milk
execute if score $temp_2 mech_data matches 8 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_powdered_snow
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 run scoreboard players add $out_0 mech_data 1000
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 run scoreboard players remove $temp_3 mech_data 1
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 1..15 if score $temp_0 mech_data matches 2 run scoreboard players add $temp_1 mech_data 1

execute if score $temp_2 mech_data matches 5 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_water
execute if score $temp_2 mech_data matches 6 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_lava
execute if score $temp_2 mech_data matches 7 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_milk
execute if score $temp_2 mech_data matches 8 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_powdered_snow
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 0 run data modify storage du:temp obj.output_item set value {id:"minecraft:bucket",Count:1b}
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 0 run scoreboard players add $out_0 mech_data 1000
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 0 run scoreboard players remove $temp_3 mech_data 1
execute if score $temp_2 mech_data matches 5..8 if score $temp_1 mech_data matches 0 run scoreboard players add $temp_1 mech_data 1

#stews
execute if score $temp_2 mech_data matches 9 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 4 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_mushroom_stew
execute if score $temp_2 mech_data matches 10 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 4 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_rabbit_stew
execute if score $temp_2 mech_data matches 11 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 4 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_beetroot_soup
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 4 run scoreboard players add $out_0 mech_data 250
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 4 run scoreboard players remove $temp_3 mech_data 1
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 4 run scoreboard players add $temp_1 mech_data 1

execute if score $temp_2 mech_data matches 9 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_mushroom_stew
execute if score $temp_2 mech_data matches 10 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_rabbit_stew
execute if score $temp_2 mech_data matches 11 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_beetroot_soup
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 0 run data modify storage du:temp obj.output_item set value {id:"minecraft:bowl",Count:1b}
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 0 run scoreboard players add $out_0 mech_data 250
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 0 run scoreboard players remove $temp_3 mech_data 1
execute if score $temp_2 mech_data matches 9..11 if score $temp_1 mech_data matches 0 run scoreboard players add $temp_1 mech_data 1

#water bottle
execute if score $temp_2 mech_data matches 12 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 3 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_water
execute if score $temp_2 mech_data matches 13 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 3 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_honey
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 3 run scoreboard players add $out_0 mech_data 250
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 3 run scoreboard players remove $temp_3 mech_data 1
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 1..63 if score $temp_0 mech_data matches 3 run scoreboard players add $temp_1 mech_data 1

execute if score $temp_2 mech_data matches 12 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_water
execute if score $temp_2 mech_data matches 13 if score $temp_1 mech_data matches 0 unless data storage du:temp obj.liquid_item.id run function mechanization:base/liquids/set_fluid_honey
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 0 run data modify storage du:temp obj.output_item set value {id:"minecraft:glass_bottle",Count:1b}
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 0 run scoreboard players add $out_0 mech_data 250
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 0 run scoreboard players remove $temp_3 mech_data 1
execute if score $temp_2 mech_data matches 12..13 if score $temp_1 mech_data matches 0 run scoreboard players add $temp_1 mech_data 1
