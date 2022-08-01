
# get data
execute store result score #storage mechanization.data run data get storage energy:temp list[0].tag.energy.storage
execute store result score #max_storage mechanization.data run data get storage energy:temp list[0].tag.energy.max_storage
execute store result score #models mechanization.data run data get storage energy:temp list[0].tag.mechanization.battery.models
execute store result score #base_model mechanization.data run data get storage energy:temp list[0].tag.mechanization.battery.base_model

# lore
data merge block -30000000 0 3202 {Text1:'[{"translate":"mech.item.portable_battery.lore","color":"gray","italic":false,"with":[{"score":{"name":"#storage","objective":"mechanization.data"},"color":"gray"},{"score":{"name":"#max_storage","objective":"mechanization.data"},"color":"gray"}]}]'}
execute if score #max_storage mechanization.data matches 1.. unless data storage energy:temp list[0].tag.display.Lore[0] run data modify storage energy:temp list[0].tag.display.Lore set value ['{"text":""}']
execute if score #max_storage mechanization.data matches 1.. run data modify storage energy:temp list[0].tag.display.Lore[0] set from block -30000000 0 3202 Text1

# configure model
scoreboard players operation #max_storage mechanization.data /= #models mechanization.data
scoreboard players operation #storage mechanization.data /= #max_storage mechanization.data
scoreboard players operation #base_model mechanization.data += #storage mechanization.data
execute if score #max_storage mechanization.data matches 1.. if score #models mechanization.data matches 1.. store result storage energy:temp list[0].tag.CustomModelData int 1 run scoreboard players get #base_model mechanization.data
