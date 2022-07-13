
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
execute if score #max_storage mechanization.data matches 1.. run data modify storage mechanization:temp obj.tag.display.Lore prepend value '[{"translate":"mech.item.portable_battery.lore","color":"gray","italic":false,"with":[{"text":"0"},{"text":"0"}]}]'

# copy modifier items
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[0]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[1]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[2]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[3]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[4]
data modify storage mechanization:temp obj.tag.mechanization.upgrades.items append from storage mechanization:temp list[5]


# apply modifier
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:1b} run function mechanization:gadgets/machines/tinker_table/modify_energy_saber
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:2b} run function mechanization:gadgets/machines/tinker_table/modify_drill
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:3b} run function mechanization:gadgets/machines/tinker_table/modify_modular_armor
execute if data storage mechanization:temp obj.tag.mechanization.upgrades{type:4b} run function mechanization:gadgets/machines/tinker_table/modify_firearm
