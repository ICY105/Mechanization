
# get item id length
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get block -30000000 0 3201 Items[0].tag.mechanization.id

# check manual
loot give @s[tag=!mechanization.has_manual] loot mechanization:base/manual/start
execute if data entity @s[tag=!mechanization.has_manual] Inventory[].tag.mechanization{id:"mechanical_manual"} run tag @s add mechanization.has_manual
execute if score @s mechanization.item_id matches 17 if data block -30000000 0 3201 Items[0].tag.mechanization{id:"mechanical_manual"} run function mechanization:base/player/manual/check

# process pipe wrench
execute if score #timer.2 mechanization.data matches 1 if score @s mechanization.item_id matches 11 if data block -30000000 0 3201 Items[0].tag.mechanization{id:"pipe_wrench"} run function mechanization:base/player/pipe_wrench/display_state

# scores
execute if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1
