
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:blaze_rod"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.0 mechanization.data 4
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:blaze_rod"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.1 mechanization.data 4
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:blaze_rod"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #count.2 mechanization.data 4

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_steel"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 288
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_steel"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 288

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 144
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} unless predicate mechanization:alloy_furnace_nether_upgrade store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 144

scoreboard players add #storage.2 mechanization.data 144
execute unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_titanium_steel"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_titanium_steel
execute unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_titanium_steel"} run data modify entity @s Item.tag.tank_3 set from block -30000000 0 3201 Items[0]
