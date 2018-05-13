
#store scoreboard to nbt
execute unless score @s mech_data matches 0.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_xp

#player
execute store result score temp_0 mech_data positioned ~ ~0.5 ~ run experience query @p[distance=..0.5] levels

execute if score temp_0 mech_data matches 1..29 if score @s mech_data matches 64.. positioned ~ ~0.5 ~ run experience add @p[distance=..0.5] 64 points
execute if score temp_0 mech_data matches 1..29 if score @s mech_data matches 64.. run scoreboard players remove @s mech_data 64

execute if score temp_0 mech_data matches 31.. if score @s mech_data matches ..2047 positioned ~ ~0.5 ~ run experience add @p[distance=..0.5] -64 points
execute if score temp_0 mech_data matches 31.. if score @s mech_data matches ..2047 run scoreboard players add @s mech_data 64

#pickup xp orbs
scoreboard players set temp_0 mech_data 0
execute if score @s mech_data matches ..2047 store result score temp_0 mech_data run data get entity @e[type=xp_orb,distance=..8,limit=1] Value
execute if score temp_0 mech_data matches 1.. run scoreboard players operation @s mech_data += temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run kill @e[type=xp_orb,distance=..8,limit=1]

#display
execute if score @s mech_data matches 0..255 store success entity @s ArmorItems[3].tag.Damage int 87 if entity @s
execute if score @s mech_data matches 256..511 store success entity @s ArmorItems[3].tag.Damage int 88 if entity @s
execute if score @s mech_data matches 512..559 store success entity @s ArmorItems[3].tag.Damage int 89 if entity @s
execute if score @s mech_data matches 768..1023 store success entity @s ArmorItems[3].tag.Damage int 90 if entity @s
execute if score @s mech_data matches 1024..1279 store success entity @s ArmorItems[3].tag.Damage int 91 if entity @s
execute if score @s mech_data matches 1280..1535 store success entity @s ArmorItems[3].tag.Damage int 92 if entity @s
execute if score @s mech_data matches 1536..1791 store success entity @s ArmorItems[3].tag.Damage int 93 if entity @s
execute if score @s mech_data matches 1792..2047 store success entity @s ArmorItems[3].tag.Damage int 94 if entity @s
execute if score @s mech_data matches 2048.. store success entity @s ArmorItems[3].tag.Damage int 95 if entity @s

execute store result entity @s ArmorItems[3].tag.mech_xp int 1 run scoreboard players get @s mech_data

execute unless block ~ ~ ~ glass run function give:mech_machines/machine_frame_tier_3
execute unless block ~ ~ ~ glass run kill @s
