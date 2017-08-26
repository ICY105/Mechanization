scoreboard players set @s timer 0

execute @s ~ ~ ~ detect ~ ~-1 ~ minecraft:end_rod -1 scoreboard players tag @s add inactive

scoreboard players remove @s[tag=inactive,score_reactorHeat_min=10] reactorHeat 10
scoreboard players add @s[tag=!inactive] reactorHeat 20
execute @s[tag=!inactive,score_reactorHeat_min=250] ~ ~0.01 ~ summon armor_stand ~1 ~ ~ {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=300] ~ ~0.01 ~ summon armor_stand ~-1 ~ ~ {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=350] ~ ~0.01 ~ summon armor_stand ~ ~ ~1 {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=400] ~ ~0.01 ~ summon armor_stand ~ ~ ~-1 {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=500] ~ ~0.01 ~ summon armor_stand ~1 ~ ~1 {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=550] ~ ~0.01 ~ summon armor_stand ~-1 ~ ~1 {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=600] ~ ~0.01 ~ summon armor_stand ~1 ~ ~-1 {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[tag=!inactive,score_reactorHeat_min=650] ~ ~0.01 ~ summon armor_stand ~-1 ~ ~-1 {Marker:1b,Tags:["boil"],Small:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
scoreboard players remove @s[tag=!inactive] reactorFuel 1
scoreboard players tag @s remove inactive

execute @s[tag=!inactive] ~ ~ ~ playsound mech.reactor_active block @a[r=8] ~ ~ ~ 0.7 1

execute @s[score_reactorHeat_min=1,score_reactorHeat=249] ~ ~ ~ function mechanization_nuclear:reactor_effects/part_heat_low
execute @s[score_reactorHeat_min=250,score_reactorHeat=499] ~ ~ ~ function mechanization_nuclear:reactor_effects/part_heat_med1
execute @s[score_reactorHeat_min=500,score_reactorHeat=749] ~ ~ ~ function mechanization_nuclear:reactor_effects/part_heat_med2
execute @s[score_reactorHeat_min=750] ~ ~ ~ function mechanization_nuclear:reactor_effects/part_heat_high
execute @s[score_reactorHeat_min=1000] ~ ~ ~ function mechanization_nuclear:reactor_effects/explode

scoreboard players tag @a remove hazmat
scoreboard players tag @a add hazmat {Inventory:[{Slot:100b,tag:{display:{Lore:["§aRadiation Protection"]}}},{Slot:101b,tag:{display:{Lore:["§aRadiation Protection"]}}},{Slot:102b,tag:{display:{Lore:["§aRadiation Protection"]}}},{Slot:103b,tag:{display:{Lore:["§aRadiation Protection"]}}}]}
effect @a[r=16,tag=!hazmat] minecraft:wither 4 1