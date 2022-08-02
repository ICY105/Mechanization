
scoreboard players set #damage mechanization.data 60
scoreboard players set #fire_rate mechanization.data 4
scoreboard players set #velocity mechanization.data 6
scoreboard players set #range mechanization.data 64
scoreboard players set #heat mechanization.data 36
scoreboard players set #cooling mechanization.data 6
scoreboard players set #energy mechanization.data 80
scoreboard players set #count mechanization.data 1
scoreboard players set #bouncy mechanization.data 1
scoreboard players set #model mechanization.data 6424925

# chambers
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"accelerated_chamber"} run scoreboard players set #damage mechanization.data 15
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"accelerated_chamber"} run scoreboard players set #fire_rate mechanization.data 1
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"accelerated_chamber"} run scoreboard players set #heat mechanization.data 9
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"accelerated_chamber"} run scoreboard players set #energy mechanization.data 18
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"accelerated_chamber"} run scoreboard players add #model mechanization.data 1

execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"rapid_chamber"} run scoreboard players set #damage mechanization.data 30
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"rapid_chamber"} run scoreboard players set #fire_rate mechanization.data 2
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"rapid_chamber"} run scoreboard players set #heat mechanization.data 18
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"rapid_chamber"} run scoreboard players set #energy mechanization.data 36
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"rapid_chamber"} run scoreboard players add #model mechanization.data 2

execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"pressurized_chamber"} run scoreboard players set #damage mechanization.data 150
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"pressurized_chamber"} run scoreboard players set #fire_rate mechanization.data 10
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"pressurized_chamber"} run scoreboard players set #heat mechanization.data 90
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"pressurized_chamber"} run scoreboard players set #energy mechanization.data 180
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"pressurized_chamber"} run scoreboard players add #model mechanization.data 3

execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"blazing_chamber"} run scoreboard players set #damage mechanization.data 300
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"blazing_chamber"} run scoreboard players set #fire_rate mechanization.data 20
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"blazing_chamber"} run scoreboard players set #heat mechanization.data 180
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"blazing_chamber"} run scoreboard players set #energy mechanization.data 360
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"blazing_chamber"} run scoreboard players add #model mechanization.data 4

execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"supercharged_chamber"} run scoreboard players set #damage mechanization.data 600
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"supercharged_chamber"} run scoreboard players set #fire_rate mechanization.data 40
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"supercharged_chamber"} run scoreboard players set #heat mechanization.data 360
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"supercharged_chamber"} run scoreboard players set #energy mechanization.data 720
execute if data storage mechanization:temp list[{Slot:14b}].tag.mechanization{id:"supercharged_chamber"} run scoreboard players add #model mechanization.data 5

# pump
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"overclocked_pump"} run scoreboard players operation #damage mechanization.data *= #cons.120 mechanization.data
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"overclocked_pump"} run scoreboard players operation #damage mechanization.data /= #cons.100 mechanization.data
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"overclocked_pump"} run scoreboard players operation #heat mechanization.data *= #cons.140 mechanization.data
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"overclocked_pump"} run scoreboard players operation #heat mechanization.data /= #cons.100 mechanization.data

execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"frigid_pump"} run scoreboard players operation #damage mechanization.data *= #cons.80 mechanization.data
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"frigid_pump"} run scoreboard players operation #damage mechanization.data /= #cons.100 mechanization.data
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"frigid_pump"} run scoreboard players operation #heat mechanization.data *= #cons.60 mechanization.data
execute if data storage mechanization:temp list[{Slot:13b}].tag.mechanization{id:"frigid_pump"} run scoreboard players operation #heat mechanization.data /= #cons.100 mechanization.data

# heat sink
execute if data storage mechanization:temp list[{Slot:12b}].tag.mechanization{id:"passive_heat_sink"} run scoreboard players set #cooling mechanization.data 4
execute if data storage mechanization:temp list[{Slot:12b}].tag.mechanization{id:"passive_heat_sink"} run scoreboard players operation #energy mechanization.data *= #cons.85 mechanization.data
execute if data storage mechanization:temp list[{Slot:12b}].tag.mechanization{id:"passive_heat_sink"} run scoreboard players operation #energy mechanization.data /= #cons.100 mechanization.data

execute if data storage mechanization:temp list[{Slot:12b}].tag.mechanization{id:"energized_heat_sink"} run scoreboard players set #cooling mechanization.data 10
execute if data storage mechanization:temp list[{Slot:12b}].tag.mechanization{id:"energized_heat_sink"} run scoreboard players operation #energy mechanization.data *= #cons.125 mechanization.data
execute if data storage mechanization:temp list[{Slot:12b}].tag.mechanization{id:"energized_heat_sink"} run scoreboard players operation #energy mechanization.data /= #cons.100 mechanization.data

# barrels
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players add #model mechanization.data 6
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players set #count mechanization.data 9
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players set #range mechanization.data 32
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players set #bouncy mechanization.data 0
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players set #velocity mechanization.data 4
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players operation #damage mechanization.data /= #cons.3 mechanization.data
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"split_barrel"} run scoreboard players operation #fire_rate mechanization.data *= #cons.3 mechanization.data

execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"long_barrel"} run scoreboard players add #model mechanization.data 12
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"long_barrel"} run scoreboard players set #range mechanization.data 256
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"long_barrel"} run scoreboard players set #bouncy mechanization.data 0
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"long_barrel"} run scoreboard players set #velocity mechanization.data 10

# execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players add #model mechanization.data 18
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players set #range mechanization.data 16
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players set #bouncy mechanization.data 1
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players set #velocity mechanization.data 32
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players operation #heat mechanization.data *= #cons.3 mechanization.data
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players operation #damage mechanization.data *= #cons.150 mechanization.data
execute if data storage mechanization:temp list[{Slot:15b}].tag.mechanization{id:"sonic_barrel"} run scoreboard players operation #damage mechanization.data /= #cons.100 mechanization.data

# store data
execute store result storage mechanization:temp obj.tag.mechanization.epac.damage int 1 run scoreboard players get #damage mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.fire_rate int 1 run scoreboard players get #fire_rate mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.heat int 1 run scoreboard players get #heat mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.energy int 1 run scoreboard players get #energy mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.count int 1 run scoreboard players get #count mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.bouncy int 1 run scoreboard players get #bouncy mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.velocity int 1 run scoreboard players get #velocity mechanization.data
scoreboard players operation #range mechanization.data *= #cons.2 mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.epac.range int 1 run scoreboard players get #range mechanization.data
scoreboard players operation #range mechanization.data /= #cons.2 mechanization.data
execute store result storage mechanization:temp obj.tag.CustomModelData int 1 run scoreboard players get #model mechanization.data

# display data
scoreboard players operation #damage mechanization.data /= #cons.10 mechanization.data
execute if score #damage mechanization.data matches 0 run scoreboard players set #damage mechanization.data 1
data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#damage","objective":"mechanization.data"}}," ",{"translate":"mech.lore.damage"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#fire_rate","objective":"mechanization.data"}}," ",{"translate":"mech.lore.fire_rate"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#velocity","objective":"mechanization.data"}}," ",{"translate":"mech.lore.velocity"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#range","objective":"mechanization.data"}}," ",{"translate":"mech.lore.epac_range"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

execute if score #count mechanization.data matches 2.. run data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#count","objective":"mechanization.data"}}," ",{"translate":"mech.lore.shot_count"}]'
execute if score #count mechanization.data matches 2.. run data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#heat","objective":"mechanization.data"}}," ",{"translate":"mech.lore.heat"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#cooling","objective":"mechanization.data"}}," ",{"translate":"mech.lore.cooling"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

data modify block -30000000 0 3202 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"#energy","objective":"mechanization.data"}}," ",{"translate":"mech.lore.energy"}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 Text1

execute if score #bouncy mechanization.data matches 1 run data modify block -30000000 0 3202 Text1 set value '[{"translate":"mech.lore.bouncy","color":"dark_green","italic":"false"}]'
data modify storage mechanization:temp obj.tag.display.Lore append value '[{"translate":"mech.lore.added_by","color":"blue","italic":false}]'
