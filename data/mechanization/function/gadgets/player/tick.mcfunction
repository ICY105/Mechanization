
# drill
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[custom_data~{mechanization:{id:"drill"}}] run function mechanization:gadgets/player/drill/tick

# firearm
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1
execute if score @s mechanization.firerate matches -59.. run scoreboard players remove @s mechanization.firerate 1
execute if score @s mechanization.weaponheat matches 1.. run function mechanization:gadgets/player/firearms/display_heat

# armor
execute if entity @s[tag=mechanization.in_flight] run function mechanization:gadgets/player/modular_armor/reset_flight 

execute if items entity @s armor.* minecraft:poisonous_potato[minecraft:custom_data~{mechanization:{upgrades:{}}}] run function mechanization:gadgets/player/modular_armor/tick

execute if score #timer.20 mechanization.data matches 0 if items entity @s armor.head minecraft:poisonous_potato[minecraft:custom_data~{mechanization:{id:"rebreather"}}] run function mechanization:gadgets/player/modular_armor/rebreather
execute if score #timer.20 mechanization.data matches 0 if items entity @s armor.head minecraft:poisonous_potato[minecraft:custom_data~{mechanization:{id:"night_vision_goggles"}}] run function mechanization:gadgets/player/modular_armor/night_vision

execute if items entity @s armor.chest minecraft:poisonous_potato[minecraft:custom_data~{mechanization:{id:"jetpack"}}] run function mechanization:gadgets/player/modular_armor/flight

execute if score #timer.10 mechanization.data matches 0 if items entity @s armor.feet minecraft:poisonous_potato[minecraft:custom_data~{mechanization:{id:"hover_boots"}}] run function mechanization:gadgets/player/modular_armor/slowfall
execute if items entity @s armor.feet minecraft:poisonous_potato[minecraft:custom_data~{mechanization:{id:"phase_boots"}}] run function mechanization:gadgets/player/modular_armor/wall_walk

# reset scores
scoreboard players set @s mechanization.use_drill 0
scoreboard players add @s mechanization.firerate 0
scoreboard players add @s mechanization.weaponheat 0
