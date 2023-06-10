
advancement revoke @s only mechanization:triggers/interact_with_charging_station

item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand

scoreboard players set #state mechanization.data 0
execute unless data entity @s SelectedItem run scoreboard players set #state mechanization.data 1

scoreboard players set #loop mechanization.data 150
execute anchored eyes positioned ^ ^ ^ run function mechanization:gadgets/blocks/charging_station/interact_loop

execute if score #state mechanization.data matches 2 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #state mechanization.data matches 3 run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
