
execute store result score #range mechanization.data run data get entity @s SelectedItem.tag.mechanization.upgrades.saber_range
scoreboard players operation #uuid mechanization.data = @s player_action.uuid.0

execute if score #range mechanization.data matches 1.. run summon minecraft:armor_stand ~ ~1 ~ {Tags:["mechanization", "mechanization.ticking", "mechanization.energy_saber","mechanization.new"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Pose:{Head:[0f,1f,0f]},CustomName:'{"translate":"mech.item.energy_saber"}'}
execute if score #range mechanization.data matches 1.. run item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
execute if score #range mechanization.data matches 1.. run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
execute if score #range mechanization.data matches 1.. as @e[type=armor_stand,tag=mechanization.new,distance=..8] run function mechanization:gadgets/player/energy_saber/throw_saber_2
