
#$ quantity: number of neutrons
#$> get_data_entry: input for function mechanization:nuclear/math/m.get_data_entry

$scoreboard players set #neutron mechanization.data $(quantity)
execute if score #neutron mechanization.data matches 0 run return 0

execute store result score #chance mechanization.data run function mechanization:nuclear/math/m.get_data_entry with storage mechanization:temp io.get_data_entry
execute if score #chance mechanization.data matches ..0 run return 0

scoreboard players operation #neutron mechanization.data *= #chance mechanization.data

scoreboard players operation #out mechanization.data = #neutron mechanization.data
scoreboard players operation #out mechanization.data /= #cons.10000 mechanization.data
scoreboard players operation #neutron mechanization.data %= #cons.10000 mechanization.data

execute store result score #result mechanization.data run random value 0..10000
execute if score #neutron mechanization.data > #result mechanization.data run scoreboard players add #out mechanization.data 1

execute store result storage mechanization:temp io.return.value int 1 run scoreboard players get #out mechanization.data
return run function mechanization:base/math/m.return with storage mechanization:temp io.return
