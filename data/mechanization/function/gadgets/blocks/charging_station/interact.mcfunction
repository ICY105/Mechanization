
advancement revoke @s only mechanization:triggers/interact_with_charging_station

data remove block -30000000 0 3201 Items
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
data modify block -30000000 0 3201 Items[0].count set value 1

scoreboard players set #state mechanization.data 0
execute unless data entity @s SelectedItem run scoreboard players set #state mechanization.data 1

execute store result score #loop mechanization.data run attribute @s minecraft:block_interaction_range get 200
scoreboard players add #loop mechanization.data 10
execute anchored eyes positioned ^ ^ ^ run function mechanization:gadgets/blocks/charging_station/interact_loop

execute if score #state mechanization.data matches 2 run item modify entity @s weapon.mainhand mechanization:decrement_count
execute if score #state mechanization.data matches 3 if items entity @s weapon.mainhand * run loot give @s mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score #state mechanization.data matches 3 unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
