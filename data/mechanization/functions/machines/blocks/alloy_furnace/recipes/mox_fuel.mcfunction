
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 1008.. if data storage mechanization:temp obj.tank_1{id:"molten_uranium"} store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 1008
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 1008.. if data storage mechanization:temp obj.tank_2{id:"molten_uranium"} store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 1008

scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_plutonium"} store success score #success mechanization.data run scoreboard players remove #storage.0 mechanization.data 144
execute if score #success mechanization.data matches 0 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_plutonium"} store success score #success mechanization.data run scoreboard players remove #storage.1 mechanization.data 144

scoreboard players add #storage.2 mechanization.data 1152
execute unless data storage mechanization:temp obj.tank_3.tag{id:"molten_mox_fuel"} run data modify entity @s item.tag.fluids[2] set from storage fluid:definitions fluid_data[{id:"molten_mox_fuel"}]
