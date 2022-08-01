
scoreboard players operation #player.in energy.data = #gadgets.cf.vision_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data
function energy:v1/api/modify_player_energy
execute if score #player.out energy.data matches 1.. run effect give @s minecraft:night_vision 15 0 true
