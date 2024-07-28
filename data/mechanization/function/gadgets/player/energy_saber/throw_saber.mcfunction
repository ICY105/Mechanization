
execute store result score #range mechanization.data run data get entity @s SelectedItem.tag.mechanization.upgrades.saber_range
scoreboard players operation #uuid mechanization.data = @s player_action.uuid.0

execute if score #range mechanization.data matches 1.. run summon minecraft:item_display ~ ~1 ~ {Tags:["mechanization", "mechanization.ticking", "mechanization.energy_saber","mechanization.new"],CustomName:'{"translate":"item.mechanization.energy_saber"}'}
execute if score #range mechanization.data matches 1.. run item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
execute if score #range mechanization.data matches 1.. run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
execute if score #range mechanization.data matches 1.. as @e[type=minecraft:item_display,tag=mechanization.new,distance=..4] run function mechanization:gadgets/player/energy_saber/throw_saber_2
