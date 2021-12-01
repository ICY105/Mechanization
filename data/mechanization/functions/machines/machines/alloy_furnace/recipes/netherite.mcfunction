
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:netherite_scrap"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_0 mechanization.data 4
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:netherite_scrap"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_1 mechanization.data 4
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:netherite_scrap"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_2 mechanization.data 4

scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_3 mechanization.data matches 576.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_gold"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_3 mechanization.data 576
execute if score $temp_6 mechanization.data matches 0 if score $temp_4 mechanization.data matches 576.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_gold"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score $temp_6 mechanization.data run scoreboard players remove $temp_4 mechanization.data 576

scoreboard players add $temp_5 mechanization.data 144
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_netherite"} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_molten_netherite
execute unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_netherite"} run data modify entity @s Item.tag.tank_3 set from block -29999999 0 1601 Items[0]
