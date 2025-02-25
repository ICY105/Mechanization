

scoreboard players operation #player.in energy.data = #gadgets.cf.flight_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data

scoreboard players set #player.out energy.data 0
execute if block ~ ~-1 ~ #mechanization:air run function energy:v1/api/modify_player_energy

execute if score #player.out energy.data matches 0 run return 0

tag @s add mechanization.in_flight

attribute @s minecraft:fall_damage_multiplier modifier add mechanization:flight -1.0 add_multiplied_total
scoreboard players set #direction mechanization.data 0
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"jump":true}}}} run scoreboard players add #direction mechanization.data 1
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sneak":true}}}} run scoreboard players remove #direction mechanization.data 1
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sprint":true}}}} run scoreboard players operation #direction mechanization.data += #direction mechanization.data

execute if score #direction mechanization.data matches 0 unless block ~ ~-2 ~ #mechanization:air run scoreboard players set #direction mechanization.data -3

execute if score #direction mechanization.data matches 2 run attribute @s minecraft:gravity modifier add mechanization:flight -1.5 add_multiplied_total
execute if score #direction mechanization.data matches 1 run attribute @s minecraft:gravity modifier add mechanization:flight -1.25 add_multiplied_total
execute if score #direction mechanization.data matches 0 run attribute @s minecraft:gravity modifier add mechanization:flight -1.0 add_multiplied_total
execute if score #direction mechanization.data matches -1 run attribute @s minecraft:gravity modifier add mechanization:flight -0.75 add_multiplied_total
execute if score #direction mechanization.data matches -2 run attribute @s minecraft:gravity modifier add mechanization:flight -0.5 add_multiplied_total
