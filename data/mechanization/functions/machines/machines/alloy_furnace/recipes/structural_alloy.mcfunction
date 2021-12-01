
scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_0 mech_data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:lapis_lazuli"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_0 mech_data 4
execute if score $temp_6 mech_data matches 0 if score $temp_1 mech_data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:lapis_lazuli"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_1 mech_data 4
execute if score $temp_6 mech_data matches 0 if score $temp_2 mech_data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:lapis_lazuli"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_2 mech_data 4

scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_3 mech_data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_tin"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_3 mech_data 288
execute if score $temp_6 mech_data matches 0 if score $temp_4 mech_data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_tin"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_4 mech_data 288

scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_3 mech_data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_quartz"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_3 mech_data 288
execute if score $temp_6 mech_data matches 0 if score $temp_4 mech_data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_quartz"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_4 mech_data 288

scoreboard players add $temp_5 mech_data 144
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_structural_alloy"} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_molten_structural_alloy
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_structural_alloy"} run data modify entity @s Item.tag.tank_3 set from block -29999999 0 1601 Items[0]
