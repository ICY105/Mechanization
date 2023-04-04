####################
# Spawns invalid items in item form
####################

scoreboard players remove @s smithed.data 1
execute as @p[tag=smithed.inside_crafter, gamemode=!spectator] at @s run summon item ~ ~ ~ {Item: {id: "stone", Count: 1b}, Tags: ["smithed.replace_item", "global.ignore"]}
data modify entity @e[type=item, limit=1, tag=smithed.replace_item] Item set from storage smithed.crafter:main root.temp.export_items[0]
data remove storage smithed.crafter:main root.temp.export_items[0]
tag @e[type=item, limit=1, tag=smithed.replace_item] remove smithed.replace_item
execute if entity @s[scores={smithed.data=1..}] run function smithed.crafter:v0.1.0/block/table/crafting/manage_invalids/spawn_loop
