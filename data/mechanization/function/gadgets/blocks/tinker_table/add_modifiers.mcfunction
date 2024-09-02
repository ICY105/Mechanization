
# reset item data
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items set value []
data modify storage mechanization:temp obj.tag.display.Lore set value []
execute if data storage mechanization:temp obj.tag.mechanization.battery run data modify storage mechanization:temp obj.tag.energy.max_storage set value 0

# battery modifier
scoreboard players set #max_storage mechanization.data 0
execute store result score #storage mechanization.data run data get storage mechanization:temp obj.tag.mech_battery.energy
execute if data storage mechanization:temp list[0].tag.mechanization{id:"portable_battery"} run scoreboard players add #max_storage mechanization.data 32000
execute if data storage mechanization:temp list[1].tag.mechanization{id:"portable_battery"} run scoreboard players add #max_storage mechanization.data 32000
execute if data storage mechanization:temp list[2].tag.mechanization{id:"portable_battery"} run scoreboard players add #max_storage mechanization.data 32000
execute if data storage mechanization:temp list[3].tag.mechanization{id:"portable_battery"} run scoreboard players add #max_storage mechanization.data 32000
execute if data storage mechanization:temp list[4].tag.mechanization{id:"portable_battery"} run scoreboard players add #max_storage mechanization.data 32000
execute if data storage mechanization:temp list[5].tag.mechanization{id:"portable_battery"} run scoreboard players add #max_storage mechanization.data 32000
execute if score #max_storage mechanization.data matches 1.. run data modify storage mechanization:temp obj.tag.energy set value {max_storage:0,storage:0}
execute if score #max_storage mechanization.data matches 1.. run data modify storage mechanization:temp obj.tag.mechanization.battery set value {models:0,base_model:0}
execute if score #max_storage mechanization.data matches 1.. store result storage mechanization:temp obj.tag.energy.max_storage int 1 run scoreboard players get #max_storage mechanization.data
execute if score #storage mechanization.data > #max_storage mechanization.data run scoreboard players operation #storage mechanization.data = #max_storage mechanization.data
execute store result storage mechanization:temp obj.tag.energy.storage int 1 run scoreboard players get #storage mechanization.data

# add upgrade list lore
execute if score #max_storage mechanization.data matches 1.. run data modify storage mechanization:temp obj.tag.display.Lore prepend value '[{"translate":"lore.mechanization.portable_battery","color":"gray","italic":false,"with":[{"text":"0"},{"text":"0"}]}]'

# copy modifier items
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[0]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[1]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[2]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[3]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[4]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[5]

# apply modifier
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:1b} run function mechanization:gadgets/blocks/tinker_table/modify_energy_saber
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:2b} run function mechanization:gadgets/blocks/tinker_table/modify_drill
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:3b} run function mechanization:gadgets/blocks/tinker_table/modify_modular_armor
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:4b} run function mechanization:gadgets/blocks/tinker_table/modify_firearm

# add lore
scoreboard players set #success mechanization.data 0
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[0].tag.mechanization.upgrade.durability store result score #durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[0].tag.mechanization.upgrade.durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[0].tag.mechanization.upgrade.durability store result score #max_durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[0].tag.mechanization.upgrade.max_durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[0].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"%s/%s | %s","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"nbt":"obj.tag.mechanization.upgrades.items[0].tag.display.Name","storage":"mechanization:temp","interpret":true}]}]'
execute unless data storage mechanization:temp obj.tag.mechanization.upgrades.items[0].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"nbt":"obj.tag.mechanization.upgrades.items[0].tag.display.Name","storage":"mechanization:temp","interpret":true}]'
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[0] run data modify storage mechanization:temp obj.tag.display.Lore prepend from block -30000000 0 3202 front_text.messages[0]

scoreboard players set #success mechanization.data 0
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[1].tag.mechanization.upgrade.durability store result score #durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[1].tag.mechanization.upgrade.durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[1].tag.mechanization.upgrade.durability store result score #max_durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[1].tag.mechanization.upgrade.max_durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[1].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"%s/%s | %s","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"nbt":"obj.tag.mechanization.upgrades.items[1].tag.display.Name","storage":"mechanization:temp","interpret":true}]}]'
execute unless data storage mechanization:temp obj.tag.mechanization.upgrades.items[1].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"nbt":"obj.tag.mechanization.upgrades.items[1].tag.display.Name","storage":"mechanization:temp","interpret":true}]'
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[1] run data modify storage mechanization:temp obj.tag.display.Lore prepend from block -30000000 0 3202 front_text.messages[0]

scoreboard players set #success mechanization.data 0
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[2].tag.mechanization.upgrade.durability store result score #durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[2].tag.mechanization.upgrade.durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[2].tag.mechanization.upgrade.durability store result score #max_durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[2].tag.mechanization.upgrade.max_durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[2].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"%s/%s | %s","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"nbt":"obj.tag.mechanization.upgrades.items[2].tag.display.Name","storage":"mechanization:temp","interpret":true}]}]'
execute unless data storage mechanization:temp obj.tag.mechanization.upgrades.items[2].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"nbt":"obj.tag.mechanization.upgrades.items[2].tag.display.Name","storage":"mechanization:temp","interpret":true}]'
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[2] run data modify storage mechanization:temp obj.tag.display.Lore prepend from block -30000000 0 3202 front_text.messages[0]

scoreboard players set #success mechanization.data 0
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[3].tag.mechanization.upgrade.durability store result score #durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[3].tag.mechanization.upgrade.durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[3].tag.mechanization.upgrade.durability store result score #max_durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[3].tag.mechanization.upgrade.max_durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[3].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"%s/%s | %s","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"nbt":"obj.tag.mechanization.upgrades.items[3].tag.display.Name","storage":"mechanization:temp","interpret":true}]}]'
execute unless data storage mechanization:temp obj.tag.mechanization.upgrades.items[3].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"nbt":"obj.tag.mechanization.upgrades.items[3].tag.display.Name","storage":"mechanization:temp","interpret":true}]'
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[3] run data modify storage mechanization:temp obj.tag.display.Lore prepend from block -30000000 0 3202 front_text.messages[0]

scoreboard players set #success mechanization.data 0
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[4].tag.mechanization.upgrade.durability store result score #durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[4].tag.mechanization.upgrade.durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[4].tag.mechanization.upgrade.durability store result score #max_durability mechanization.data run data get storage mechanization:temp obj.tag.mechanization.upgrades.items[4].tag.mechanization.upgrade.max_durability
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[4].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"%s/%s | %s","color":"gray","italic":false,"with":[{"score":{"name":"#durability","objective":"mechanization.data"}},{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"nbt":"obj.tag.mechanization.upgrades.items[4].tag.display.Name","storage":"mechanization:temp","interpret":true}]}]'
execute unless data storage mechanization:temp obj.tag.mechanization.upgrades.items[4].tag.mechanization.upgrade.durability run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"nbt":"obj.tag.mechanization.upgrades.items[4].tag.display.Name","storage":"mechanization:temp","interpret":true}]'
execute if data storage mechanization:temp obj.tag.mechanization.upgrades.items[4] run data modify storage mechanization:temp obj.tag.display.Lore prepend from block -30000000 0 3202 front_text.messages[0]

data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"\\uee11","font":"mechanization:gui","color":"white","italic":false},{"translate":"lore.mechanization.added_by","color":"blue","italic":false}]'
data modify storage mechanization:temp obj.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]
