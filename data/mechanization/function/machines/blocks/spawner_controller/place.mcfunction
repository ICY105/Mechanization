
execute store result score #loop mechanization.data run attribute @s minecraft:player.block_interaction_range get 20
execute anchored eyes positioned ^ ^ ^ run function mechanization:machines/blocks/spawner_controller/place_2
execute if score #loop mechanization.data matches ..-1 run item replace entity @s[gamemode=!creative] weapon.mainhand with air
