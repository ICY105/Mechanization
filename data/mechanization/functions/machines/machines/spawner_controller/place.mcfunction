scoreboard players set #loop mechanization.data 100
execute anchored eyes positioned ^ ^ ^ run function mechanization:machines/machines/spawner_controller/place_2
execute if score #loop mechanization.data matches ..-1 run item replace entity @s weapon.mainhand with air
