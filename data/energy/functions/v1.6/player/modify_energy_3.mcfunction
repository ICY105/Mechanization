
#load scores
execute store result score #player.slot energy.data run data get storage energy:temp list[0].Slot
execute store result score #player.storage energy.data run data get storage energy:temp list[0].tag.energy.storage
execute store result score #player.max_storage energy.data run data get storage energy:temp list[0].tag.energy.max_storage

#calc difference
scoreboard players operation #player.delta energy.data = #player.energy energy.data
scoreboard players operation #player.storage energy.data += #player.energy energy.data

execute if score #player.storage energy.data matches ..-1 run scoreboard players operation #player.delta energy.data -= #player.storage energy.data
execute if score #player.storage energy.data matches ..-1 run scoreboard players set #player.storage energy.data 0

execute if score #player.storage energy.data > #player.max_storage energy.data run scoreboard players operation #player.temp energy.data = #player.storage energy.data
execute if score #player.storage energy.data > #player.max_storage energy.data run scoreboard players operation #player.temp energy.data -= #player.max_storage energy.data
execute if score #player.storage energy.data > #player.max_storage energy.data run scoreboard players operation #player.delta energy.data -= #player.temp energy.data
execute if score #player.storage energy.data > #player.max_storage energy.data run scoreboard players operation #player.storage energy.data -= #player.temp energy.data

scoreboard players operation #player.energy energy.data -= #player.delta energy.data

#store result
execute unless score #player.delta energy.data matches 0 store result storage energy:temp list[0].tag.energy.storage int 1 run scoreboard players get #player.storage energy.data

#allow for outside modification
execute unless score #player.delta energy.data matches 0 run function #energy:v1/update_energy_item

#update item
execute unless score #player.delta energy.data matches 0 run function energy:v1.6/player/modify_energy_update
