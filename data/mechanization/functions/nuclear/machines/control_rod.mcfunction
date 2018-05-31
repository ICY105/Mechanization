execute if block ~ ~ ~ dropper[triggered=true] store success entity @s ArmorItems[3].tag.Damage short 96 if entity @s
execute if block ~ ~ ~ dropper[triggered=false] store success entity @s ArmorItems[3].tag.Damage short 95 if entity @s

data merge entity @s {Fire:32676s}
execute unless block ~ ~ ~ dropper run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ dropper run kill @s