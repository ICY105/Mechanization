
scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_0 mech_data matches 32.. if data storage du:temp obj.slot1{id:"minecraft:dragon_breath"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_0 mech_data 32
execute if score $temp_6 mech_data matches 0 if score $temp_1 mech_data matches 32.. if data storage du:temp obj.slot2{id:"minecraft:dragon_breath"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_1 mech_data 32
execute if score $temp_6 mech_data matches 0 if score $temp_2 mech_data matches 32.. if data storage du:temp obj.slot3{id:"minecraft:dragon_breath"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_2 mech_data 32

scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_0 mech_data matches 32.. if data storage du:temp obj.slot1{id:"minecraft:chorus_fruit"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_0 mech_data 32
execute if score $temp_6 mech_data matches 0 if score $temp_1 mech_data matches 32.. if data storage du:temp obj.slot2{id:"minecraft:chorus_fruit"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_1 mech_data 32
execute if score $temp_6 mech_data matches 0 if score $temp_2 mech_data matches 32.. if data storage du:temp obj.slot3{id:"minecraft:chorus_fruit"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_2 mech_data 32

scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_3 mech_data matches 576.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_titanium"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_3 mech_data 576
execute if score $temp_6 mech_data matches 0 if score $temp_4 mech_data matches 576.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_titanium"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_4 mech_data 576

scoreboard players add $temp_5 mech_data 576
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_ender_alloy"} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_molten_ender_alloy
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_ender_alloy"} run data modify entity @s Item.tag.tank_3 set from block -29999999 0 1601 Items[0]
