
# get item id length
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get block -30000000 0 3201 Items[0].tag.mechanization.id

# check manual
scoreboard players enable @s mechanization.manual
execute if score #timer.20 mechanization.data matches 1 if entity @s[tag=!mechanization.has_manual] run loot give @s loot mechanization:base/manual/start
execute if score #timer.20 mechanization.data matches 1 if entity @s[tag=!mechanization.has_manual] if data entity @s Inventory[].tag.mechanization{id:"mechanical_manual"} run tag @s add mechanization.has_manual
execute if score @s mechanization.manual matches ..-1 unless items entity @s weapon.* minecraft:written_book[custom_data~{mechanization:{id:"mechanical_manual"}}] run function mechanization:base/player/manual/switch_mode_lectern
execute if score @s mechanization.item_id matches 17 if items entity @s weapon.* minecraft:written_book[custom_data~{mechanization:{id:"mechanical_manual"}}] run function mechanization:base/player/manual/check

# process pipe wrench
execute if score #timer.2 mechanization.data matches 1 if score @s mechanization.item_id matches 11 if items block -30000000 0 3201 container.0 *[custom_data~{mechanization:{id:"pipe_wrench"}}] run function mechanization:base/player/pipe_wrench/display_state

# scores
execute if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1
