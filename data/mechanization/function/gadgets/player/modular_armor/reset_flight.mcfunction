
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"y":0}}} run tag @s remove mechanization.in_flight
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"y":0}}} run attribute @s minecraft:fall_damage_multiplier modifier remove mechanization:flight

attribute @s minecraft:gravity modifier remove mechanization:flight