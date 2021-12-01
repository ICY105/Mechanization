
#energy saber throw
execute if score @s[tag=mech_right_click] mechanization.player.used_item_id matches 4100 run function mechanization:gadgets/tools/energy_saber/throw_saber

#drill
execute if score @s mechanization.player.used_item_id matches 4101 run function mechanization:gadgets/tools/drill/tick

#armor
execute if predicate mechanization:equipment/wearing_modular_armor run function mechanization:gadgets/tools/modular_armor/tick

execute if score $base.timer_20 du_data matches 0 if predicate mechanization:equipment/wearing_rebreather run function mechanization:gadgets/tools/modular_armor/rebreather
execute if score $base.timer_20 du_data matches 0 if predicate mechanization:equipment/wearing_night_vision run function mechanization:gadgets/tools/modular_armor/night_vision

execute if predicate mechanization:equipment/wearing_jetpack unless entity @s[nbt={FallFlying:1b}] run function mechanization:gadgets/tools/modular_armor/flight

execute if score $base.timer_10 du_data matches 0 if predicate mechanization:equipment/wearing_hover_boots run function mechanization:gadgets/tools/modular_armor/slowfall
execute if predicate mechanization:equipment/wearing_phase_boots run function mechanization:gadgets/tools/modular_armor/wall_walk

#firearm
execute if score @s[tag=mech_right_click] mechanization.player.used_item_id matches 4102..4105 run scoreboard players set @s mechanization.timer 4
execute if entity @s[scores={mechanization.player.used_item_id=4102..4105,mechanization.player.epac_heat=..1000,mechanization.timer=1..,mechanization.player.epac_fireate=0}] run function mechanization:gadgets/tools/firearms/fire_weapon
execute if score @s mechanization.player.used_item_id matches 4102..4105 store result score $temp_0 mechanization.data run data get entity @s SelectedItem.tag.mech_gun.fire_rate
execute if score @s mechanization.player.used_item_id matches 4102..4105 run scoreboard players remove $temp_0 mechanization.data 4
execute if entity @s[scores={mechanization.player.used_item_id=4102..4105,mechanization.timer=1..,mechanization.player.epac_fireate=1..}] if score @s mechanization.player.epac_fireate > $temp_0 mechanization.data run function mechanization:gadgets/tools/firearms/recoil

execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1
execute if score @s mechanization.player.epac_fireate matches 1.. run scoreboard players remove @s mechanization.player.epac_fireate 1
execute if score @s mechanization.player.epac_heat matches 1.. run scoreboard players remove @s mechanization.player.epac_heat 6
execute if score @s mechanization.player.epac_heat matches 1.. run function mechanization:gadgets/tools/firearms/display_heat

#reset scores
scoreboard players set @s mechanization.player.use_netherite_pickaxe 0
scoreboard players set @s mechanization.player.use_netherite_axe 0
scoreboard players set @s mechanization.player.use_netherite_shovel 0
scoreboard players set @s mechanization.player.use_netherite_hoe 0
execute unless score @s mechanization.player.epac_fireate matches 0.. run scoreboard players set @s mechanization.player.epac_fireate 0
execute unless score @s mechanization.player.epac_heat matches 0.. run scoreboard players set @s mechanization.player.epac_heat 0
