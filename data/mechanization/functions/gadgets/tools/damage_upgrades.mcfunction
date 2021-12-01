

#store data
data modify storage du:temp list set from block -29999999 0 1601 Items[0].tag.mech_upgrades.items
scoreboard players set $temp_2 mechanization.data 0

scoreboard players set $temp_3 mechanization.data 0
execute if data storage du:temp list[].tag.mech_upgrade{effect:"reinforced"} run scoreboard players set $temp_3 mechanization.data 1
execute if data storage du:temp list[].tag.mech_upgrade{effect:"repair"} run scoreboard players set $temp_3 mechanization.data 2

execute if score $temp_3 mechanization.data matches 1..2 store result score $temp_4 mechanization.data run data get storage du:temp list
execute if score $temp_3 mechanization.data matches 1..2 run scoreboard players operation $temp_4 mechanization.data *= $in_0 mech_data

#add damage
execute store result score $temp_0 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.max_durability
execute store result score $temp_1 mechanization.data run data get storage du:temp list[5].tag.mech_upgrade.durability
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[5].tag.mech_upgrade.durability run data modify storage du:temp list[5].tag.display.Lore append value [{"text":""}]
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[5].tag.mech_upgrade.durability run scoreboard players operation $temp_1 mechanization.data = $temp_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[5].tag.mech_upgrade.durability run data modify storage du:temp list[5].tag.mech_upgrade merge value {durability:0}
execute if score $temp_3 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data -= $in_0 mech_data
execute if score $temp_3 mechanization.data matches 1 if data storage du:temp list[5].tag.mech_upgrade{effect:"reinforced"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 if data storage du:temp list[5].tag.mech_upgrade{effect:"repair"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 unless data storage du:temp list[5].tag.mech_upgrade{effect:"repair"} if score $temp_1 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $temp_1 mechanization.data += $in_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[5].tag.mech_upgrade.durability int 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_0 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_0","objective":"mech_data"}}]}'
execute if score $temp_0 mechanization.data matches 1.. run data modify storage du:temp list[5].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_2 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run data remove storage du:temp list[5]

execute store result score $temp_0 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.max_durability
execute store result score $temp_1 mechanization.data run data get storage du:temp list[4].tag.mech_upgrade.durability
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[4].tag.mech_upgrade.durability run data modify storage du:temp list[4].tag.display.Lore append value [{"text":""}]
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[4].tag.mech_upgrade.durability run scoreboard players operation $temp_1 mechanization.data = $temp_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[4].tag.mech_upgrade.durability run data modify storage du:temp list[4].tag.mech_upgrade merge value {durability:0}
execute if score $temp_3 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data -= $in_0 mech_data
execute if score $temp_3 mechanization.data matches 1 if data storage du:temp list[4].tag.mech_upgrade{effect:"reinforced"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 if data storage du:temp list[4].tag.mech_upgrade{effect:"repair"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 unless data storage du:temp list[4].tag.mech_upgrade{effect:"repair"} if score $temp_1 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $temp_1 mechanization.data += $in_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[4].tag.mech_upgrade.durability int 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_0 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_0","objective":"mech_data"}}]}'
execute if score $temp_0 mechanization.data matches 1.. run data modify storage du:temp list[4].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_2 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run data remove storage du:temp list[4]

execute store result score $temp_0 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.max_durability
execute store result score $temp_1 mechanization.data run data get storage du:temp list[3].tag.mech_upgrade.durability
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[3].tag.mech_upgrade.durability run data modify storage du:temp list[3].tag.display.Lore append value [{"text":""}]
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[3].tag.mech_upgrade.durability run scoreboard players operation $temp_1 mechanization.data = $temp_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[3].tag.mech_upgrade.durability run data modify storage du:temp list[3].tag.mech_upgrade merge value {durability:0}
execute if score $temp_3 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data -= $in_0 mech_data
execute if score $temp_3 mechanization.data matches 1 if data storage du:temp list[3].tag.mech_upgrade{effect:"reinforced"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 if data storage du:temp list[3].tag.mech_upgrade{effect:"repair"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 unless data storage du:temp list[3].tag.mech_upgrade{effect:"repair"} if score $temp_1 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $temp_1 mechanization.data += $in_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[3].tag.mech_upgrade.durability int 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_0 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_0","objective":"mech_data"}}]}'
execute if score $temp_0 mechanization.data matches 1.. run data modify storage du:temp list[3].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_2 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run data remove storage du:temp list[3]

execute store result score $temp_0 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.max_durability
execute store result score $temp_1 mechanization.data run data get storage du:temp list[2].tag.mech_upgrade.durability
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[2].tag.mech_upgrade.durability run data modify storage du:temp list[2].tag.display.Lore append value [{"text":""}]
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[2].tag.mech_upgrade.durability run scoreboard players operation $temp_1 mechanization.data = $temp_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[2].tag.mech_upgrade.durability run data modify storage du:temp list[2].tag.mech_upgrade merge value {durability:0}
execute if score $temp_3 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data -= $in_0 mech_data
execute if score $temp_3 mechanization.data matches 1 if data storage du:temp list[2].tag.mech_upgrade{effect:"reinforced"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 if data storage du:temp list[2].tag.mech_upgrade{effect:"repair"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 unless data storage du:temp list[2].tag.mech_upgrade{effect:"repair"} if score $temp_1 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $temp_1 mechanization.data += $in_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[2].tag.mech_upgrade.durability int 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_0 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_0","objective":"mech_data"}}]}'
execute if score $temp_0 mechanization.data matches 1.. run data modify storage du:temp list[2].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_2 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run data remove storage du:temp list[2]

execute store result score $temp_0 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.max_durability
execute store result score $temp_1 mechanization.data run data get storage du:temp list[1].tag.mech_upgrade.durability
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[1].tag.mech_upgrade.durability run data modify storage du:temp list[1].tag.display.Lore append value [{"text":""}]
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[1].tag.mech_upgrade.durability run scoreboard players operation $temp_1 mechanization.data = $temp_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[1].tag.mech_upgrade.durability run data modify storage du:temp list[1].tag.mech_upgrade merge value {durability:0}
execute if score $temp_3 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data -= $in_0 mech_data
execute if score $temp_3 mechanization.data matches 1 if data storage du:temp list[1].tag.mech_upgrade{effect:"reinforced"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 if data storage du:temp list[1].tag.mech_upgrade{effect:"repair"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 unless data storage du:temp list[1].tag.mech_upgrade{effect:"repair"} if score $temp_1 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $temp_1 mechanization.data += $in_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[1].tag.mech_upgrade.durability int 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_0 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_0","objective":"mech_data"}}]}'
execute if score $temp_0 mechanization.data matches 1.. run data modify storage du:temp list[1].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_2 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run data remove storage du:temp list[1]

execute store result score $temp_0 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.max_durability
execute store result score $temp_1 mechanization.data run data get storage du:temp list[0].tag.mech_upgrade.durability
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[0].tag.mech_upgrade.durability run data modify storage du:temp list[0].tag.display.Lore append value [{"text":""}]
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[0].tag.mech_upgrade.durability run scoreboard players operation $temp_1 mechanization.data = $temp_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. unless data storage du:temp list[0].tag.mech_upgrade.durability run data modify storage du:temp list[0].tag.mech_upgrade merge value {durability:0}
execute if score $temp_3 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data -= $in_0 mech_data
execute if score $temp_3 mechanization.data matches 1 if data storage du:temp list[0].tag.mech_upgrade{effect:"reinforced"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 if data storage du:temp list[0].tag.mech_upgrade{effect:"repair"} run scoreboard players operation $temp_1 mechanization.data -= $temp_4 mech_data
execute if score $temp_3 mechanization.data matches 2 unless data storage du:temp list[0].tag.mech_upgrade{effect:"repair"} if score $temp_1 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $temp_1 mechanization.data += $in_0 mech_data
execute if score $temp_0 mechanization.data matches 1.. store result storage du:temp list[0].tag.mech_upgrade.durability int 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_0 mechanization.data matches 1.. run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_0","objective":"mech_data"}}]}'
execute if score $temp_0 mechanization.data matches 1.. run data modify storage du:temp list[0].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_2 mechanization.data 1
execute if score $temp_0 mechanization.data matches 1.. if score $temp_1 mechanization.data matches ..0 run data remove storage du:temp list[0]

#set data
execute if score $temp_2 mechanization.data matches 0 run data modify block -29999999 0 1601 Items[0].tag.mech_upgrades.items set from storage du:temp list

execute if score $temp_2 mechanization.data matches 1 run playsound minecraft:entity.item.break player @s
data modify storage du:temp obj set from block -29999999 0 1601 Items[0]
execute if score $temp_2 mechanization.data matches 1 run function mechanization:gadgets/machines/tinker_table/add_modifiers
data modify block -29999999 0 1601 Items[0] set from storage du:temp obj 

