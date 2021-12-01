
scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_0 mech_data matches 2.. if data storage du:temp obj.slot1{id:"minecraft:amethyst_shard"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_0 mech_data 2
execute if score $temp_6 mech_data matches 0 if score $temp_1 mech_data matches 2.. if data storage du:temp obj.slot2{id:"minecraft:amethyst_shard"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_1 mech_data 2
execute if score $temp_6 mech_data matches 0 if score $temp_2 mech_data matches 2.. if data storage du:temp obj.slot3{id:"minecraft:amethyst_shard"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_2 mech_data 2

scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_3 mech_data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_diamond"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_3 mech_data 144
execute if score $temp_6 mech_data matches 0 if score $temp_4 mech_data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_diamond"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_4 mech_data 144

scoreboard players set $temp_6 mech_data 0
execute if score $temp_6 mech_data matches 0 if score $temp_3 mech_data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_emerald"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_3 mech_data 144
execute if score $temp_6 mech_data matches 0 if score $temp_4 mech_data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_emerald"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mech_data run scoreboard players remove $temp_4 mech_data 144

scoreboard players add $temp_5 mech_data 72
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_crystal_composite"} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_molten_crystal_composite
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_crystal_composite"} run data modify entity @s Item.tag.tank_3 set from block -29999999 0 1601 Items[0]
