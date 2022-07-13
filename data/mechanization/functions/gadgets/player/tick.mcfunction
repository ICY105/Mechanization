
# drill
execute if score @s mechanization.item_id matches 5 if data entity @s SelectedItem.tag.mechanization{id:"drill"} run function mechanization:gadgets/player/drill/tick

# armor
execute if predicate mechanization:equipment/wearing_modular_armor run function mechanization:gadgets/player/modular_armor/tick

execute if score #timer.20 mechanization.data matches 0 if predicate mechanization:equipment/wearing_rebreather run function mechanization:gadgets/player/modular_armor/rebreather
execute if score #timer.20 mechanization.data matches 0 if predicate mechanization:equipment/wearing_night_vision run function mechanization:gadgets/player/modular_armor/night_vision

execute if predicate mechanization:equipment/wearing_jetpack unless entity @s[nbt={FallFlying:1b}] run function mechanization:gadgets/player/modular_armor/flight

execute if score #timer.10 mechanization.data matches 0 if predicate mechanization:equipment/wearing_hover_boots run function mechanization:gadgets/player/modular_armor/slowfall
execute if predicate mechanization:equipment/wearing_phase_boots run function mechanization:gadgets/player/modular_armor/wall_walk

# firearm
execute if score @s mechanization.item_id matches 4 if data entity @s SelectedItem.tag.mechanization{id:"epac"} if entity @s[scores={mechanization.time=1..,mechanization.weaponheat=..1000,mechanization.firerate=0}] run function mechanization:gadgets/player/firearms/fire_weapon
execute if score @s mechanization.item_id matches 4 if data entity @s SelectedItem.tag.mechanization{id:"epac"} if entity @s[scores={mechanization.time=1..}] run function mechanization:gadgets/player/firearms/recoil

execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1
execute if score @s mechanization.firerate matches 1.. run scoreboard players remove @s mechanization.firerate 1
execute if score @s mechanization.weaponheat matches 1.. run function mechanization:gadgets/player/firearms/display_heat

# reset scores
scoreboard players set @s mechanization.use_pick 0
scoreboard players set @s mechanization.use_axe 0
scoreboard players set @s mechanization.use_shovel 0
scoreboard players set @s mechanization.use_hoe 0

scoreboard players add @s mechanization.firerate 0
scoreboard players add @s mechanization.weaponheat 0
