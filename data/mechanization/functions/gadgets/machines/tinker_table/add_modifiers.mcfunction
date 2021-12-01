
#reset item data
data modify storage du:temp obj.tag.mech_upgrades.items set value []
data modify storage du:temp obj.tag.display.Lore set value []
execute if data storage du:temp obj.tag.mech_battery run data modify storage du:temp obj.tag.mech_battery.max_energy set value 0

#battery modifier
scoreboard players set $temp_0 mech_data 0
execute store result score $temp_1 mech_data run data get storage du:temp obj.tag.mech_battery.energy
data modify storage du:test list set from storage du:temp list
execute if data storage du:temp list[0].tag{mech_itemid:4110} run scoreboard players add $temp_0 mech_data 32000
execute if data storage du:temp list[1].tag{mech_itemid:4110} run scoreboard players add $temp_0 mech_data 32000
execute if data storage du:temp list[2].tag{mech_itemid:4110} run scoreboard players add $temp_0 mech_data 32000
execute if data storage du:temp list[3].tag{mech_itemid:4110} run scoreboard players add $temp_0 mech_data 32000
execute if data storage du:temp list[4].tag{mech_itemid:4110} run scoreboard players add $temp_0 mech_data 32000
execute if data storage du:temp list[5].tag{mech_itemid:4110} run scoreboard players add $temp_0 mech_data 32000
execute if score $temp_0 mech_data matches 1.. run data modify storage du:temp obj.tag.mech_battery set value {models:0,base_model:0,max_energy:0,energy:0}
execute if score $temp_0 mech_data matches 1.. store result storage du:temp obj.tag.mech_battery.max_energy int 1 run scoreboard players get $temp_0 mech_data
execute if score $temp_1 mech_data > $temp_0 mech_data run scoreboard players operation $temp_1 mech_data = $temp_0 mech_data
execute store result storage du:temp obj.tag.mech_battery.energy int 1 run scoreboard players get $temp_1 mech_data

#copy modifier items
data modify storage du:temp obj.tag.mech_upgrades.items append from storage du:temp list[0]
data modify storage du:temp obj.tag.mech_upgrades.items append from storage du:temp list[1]
data modify storage du:temp obj.tag.mech_upgrades.items append from storage du:temp list[2]
data modify storage du:temp obj.tag.mech_upgrades.items append from storage du:temp list[3]
data modify storage du:temp obj.tag.mech_upgrades.items append from storage du:temp list[4]
data modify storage du:temp obj.tag.mech_upgrades.items append from storage du:temp list[5]

#add upgrade list lore
execute if data block ~ ~ ~ Items[{tag:{mech_itemid:4110}}] run data modify storage du:temp obj.tag.display.Lore append value '[{"translate":"mech.item.portable_battery.lore","color":"gray","italic":false,"with":[{"text":"0"},{"text":"0"}]}]'

#apply modifier
execute if data storage du:temp obj.tag.mech_upgrades{type:1b} run function mechanization:gadgets/machines/tinker_table/modify_energy_saber
execute if data storage du:temp obj.tag.mech_upgrades{type:2b} run function mechanization:gadgets/machines/tinker_table/modify_drill
execute if data storage du:temp obj.tag.mech_upgrades{type:3b} run function mechanization:gadgets/machines/tinker_table/modify_modular_armor
execute if data storage du:temp obj.tag.mech_upgrades{type:4b} run function mechanization:gadgets/machines/tinker_table/modify_firearm

#add buffer lore for DU durability
execute if data storage du:temp obj.tag.du_dur{init:1b} run data modify storage du:temp obj.tag.display.Lore append value '{"text":""}'
