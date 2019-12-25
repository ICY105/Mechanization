scoreboard players set @s du_data 1

function mechanization:machines/machines/teleporter/get_valid_teleporters
execute store result score in_0 mech_data run data get storage du:temp list

execute positioned ~ ~0.5 ~ run tellraw @a[distance=..0.5] [{"translate":"mech.block.teleporter.select_destination","color":"gold","underlined":true}]
execute if score in_0 mech_data matches 0 positioned ~ ~0.5 ~ run title @a[distance=..0.5] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}]

execute if score in_0 mech_data matches 1.. positioned ~ ~0.5 ~ run scoreboard players enable @a[distance=..0.5] mech_tele
execute if score in_0 mech_data matches 1.. run summon area_effect_cloud ~ ~0.5 ~ {CustomName:'{"text":"Unnamed"}',Duration:0,Tags:["mech_dial"]}
execute if score in_0 mech_data matches 1.. as @e[tag=mech_dial] at @s run function mechanization:machines/machines/teleporter/dial_2
