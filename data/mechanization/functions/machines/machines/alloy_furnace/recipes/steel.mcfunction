
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 2.. if data storage du:temp obj.slot1{id:"minecraft:flint"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_0 mechanization.data 2
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 2.. if data storage du:temp obj.slot2{id:"minecraft:flint"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_1 mechanization.data 2
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 2.. if data storage du:temp obj.slot3{id:"minecraft:flint"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_2 mechanization.data 2

scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_iron"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_3 mechanization.data 288
execute if score $temp_6 mechanization.data matches 0 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_iron"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_4 mechanization.data 288

scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_coal"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_3 mechanization.data 288
execute if score $temp_6 mechanization.data matches 0 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_coal"} unless predicate mechanization:alloy_furnace_ender_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_4 mechanization.data 288

scoreboard players add $temp_5 mechanization.data 144
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_steel"} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_molten_steel
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_steel"} run data modify entity @s Item.tag.tank_3 set from block -29999999 0 1601 Items[0]
