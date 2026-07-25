
#  quantity: amount of neutrons
#> out: amount of neutrons interacted

scoreboard players set #out mechanization.data 0

execute if score #quantity mechanization.data matches ..0 run return 0
execute if score #chance mechanization.data matches ..0 run return 0

scoreboard players operation #quantity mechanization.data *= #chance mechanization.data

scoreboard players operation #out mechanization.data = #quantity mechanization.data
scoreboard players operation #out mechanization.data /= #cons.10000 mechanization.data
scoreboard players operation #quantity mechanization.data %= #cons.10000 mechanization.data

execute store result score #result mechanization.data run random value 0..10000
execute if score #quantity mechanization.data > #result mechanization.data run scoreboard players add #out mechanization.data 1
