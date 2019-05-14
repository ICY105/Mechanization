
scoreboard players remove @s mech_power 128
playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.dur
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.max_dur

#load data
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.dur
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.damage
execute store result score temp_2 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.Damage
execute store result score temp_3 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.item_dur
execute store result score temp_4 mech_data run data get block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.max_dur

scoreboard players remove temp_2 mech_data 1
execute if entity @s[tag=mech_upgraded] run scoreboard players remove temp_2 mech_data 1

#change internal dur value
scoreboard players operation temp_1 mech_data -= temp_2 mech_data
scoreboard players operation temp_0 mech_data += temp_1 mech_data
scoreboard players operation temp_1 mech_data += temp_2 mech_data
execute if score temp_0 mech_data > temp_4 mech_data run scoreboard players operation temp_0 mech_data = temp_4 mech_data
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.dur int 1 run scoreboard players get temp_0 mech_data

#set dur bar
scoreboard players operation temp_5 mech_data = temp_3 mech_data
scoreboard players operation temp_6 mech_data = temp_3 mech_data
scoreboard players remove temp_6 mech_data 8
scoreboard players operation temp_5 mech_data *= temp_0 mech_data
scoreboard players operation temp_5 mech_data /= temp_4 mech_data
scoreboard players operation temp_3 mech_data -= temp_5 mech_data
execute if score temp_3 mech_data > temp_6 mech_data run scoreboard players operation temp_3 mech_data = temp_6 mech_data
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.Damage int 1 run scoreboard players get temp_3 mech_data

execute store result block ~ ~ ~ Items[{Slot:4b}].tag.du_dur.damage int 1 run data get block ~ ~ ~ Items[{Slot:4b}].tag.Damage

#set lore
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
data merge block -29999999 0 1602 {Text1:"[{\"translate\":\"item.durability\",\"color\":\"gray\",\"italic\":false,\"with\":[{\"nbt\":\"Items[{Slot:4b}].tag.du_dur.dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"Items[{Slot:4b}].tag.du_dur.max_dur\",\"block\":\"-29999999 0 1601\",\"color\":\"gray\",\"italic\":false}]}]"}
data modify block -29999999 0 1601 Items[{Slot:4b}].tag.display.Lore[-1] set from block -29999999 0 1602 Text1
data modify block ~ ~ ~ Items set from block -29999999 0 1601 Items
