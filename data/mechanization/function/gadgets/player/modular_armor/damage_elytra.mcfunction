
# setup
scoreboard players set #broken mechanization.data 0
execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[{id:"minecraft:elytra"}].components."minecraft:unbreakable" run return 0

# add damage
execute store result score #damage mechanization.data run data get block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[{id:"minecraft:elytra"}].components."minecraft:damage"
execute if score #damage mechanization.data matches ..431 run scoreboard players add #damage mechanization.data 1
execute if score #damage mechanization.data matches 432.. run scoreboard players set #broken mechanization.data 1

# set data
execute store result block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[{id:"minecraft:elytra"}].components."minecraft:damage" int 1 run scoreboard players get #damage mechanization.data

execute if score #broken mechanization.data matches 1 run playsound minecraft:entity.item.break player @s
execute if score #broken mechanization.data matches 1 run data remove block -30000000 0 3201 Items[0].components."minecraft:glide"
data modify block -30000000 0 3201 Items[0].components."minecraft:damage" set from block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.current_durability
