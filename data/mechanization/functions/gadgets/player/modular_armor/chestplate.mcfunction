
data modify storage mechanization:temp list2 append from block -30000000 0 3201 Items[0]
execute store result score #value mechanization.data run data get block -30000000 0 3201 Items[0].tag.mechanization.upgrades.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data

execute store result score #damage mechanization.data run data get block -30000000 0 3201 Items[0].tag.Damage
execute if score #damage mechanization.data matches 1.. if entity @s[gamemode=!creative,tag=!player_action.elyra_flying] run function mechanization:gadgets/player/damage_upgrades
execute if score #damage mechanization.data matches 1.. if entity @s[gamemode=!creative,tag=player_action.elyra_flying] run function mechanization:gadgets/player/modular_armor/damage_elytra
execute if score #damage mechanization.data matches 1.. run item replace entity @s armor.chest from block -30000000 0 3201 container.0
execute if score #damage mechanization.data matches 1.. run item modify entity @s armor.chest mechanization:remove_damage

# effects
execute if data block -30000000 0 3201 Items[0].tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"jetpack"} unless entity @s[nbt={FallFlying:1b}] run function mechanization:gadgets/player/modular_armor/flight
