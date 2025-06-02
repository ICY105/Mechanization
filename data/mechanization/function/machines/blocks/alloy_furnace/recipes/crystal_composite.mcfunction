
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 8.. if data storage mechanization:temp obj.slot1{id:"minecraft:amethyst_shard"} store success score #success mechanization.data run scoreboard players remove #count.0 mechanization.data 8
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 8.. if data storage mechanization:temp obj.slot2{id:"minecraft:amethyst_shard"} store success score #success mechanization.data run scoreboard players remove #count.1 mechanization.data 8
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 8.. if data storage mechanization:temp obj.slot3{id:"minecraft:amethyst_shard"} store success score #success mechanization.data run scoreboard players remove #count.2 mechanization.data 8

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_diamond"} store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 144
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_diamond"} store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 144

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_emerald"} store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 144
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_emerald"} store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 144

scoreboard players add #storage.2 mechanization.data 72
execute if entity @s[tag=mechanization.upgraded.ender] if predicate {"condition":"minecraft:random_chance","chance":0.1} run scoreboard players add #storage.2 mechanization.data 72
execute unless data storage mechanization:temp obj.tank_3.tag{id:"molten_crystal_composite"} run data modify entity @s item.components."minecraft:custom_data".fluids[2] set from storage fluid:definitions fluid_data[{id:"molten_crystal_composite"}]
