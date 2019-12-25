
#stop loop
scoreboard players remove temp_0 mech_data 0

#add filler
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items
execute unless data block ~ ~ ~ Items[{Slot:0b}] run replaceitem block ~ ~ ~ container.0 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run replaceitem block ~ ~ ~ container.1 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run replaceitem block ~ ~ ~ container.6 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:7b}] run replaceitem block ~ ~ ~ container.7 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:9b}] run replaceitem block ~ ~ ~ container.9 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run replaceitem block ~ ~ ~ container.10 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run replaceitem block ~ ~ ~ container.11 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run replaceitem block ~ ~ ~ container.12 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:13b}] run replaceitem block ~ ~ ~ container.13 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:14b}] run replaceitem block ~ ~ ~ container.14 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:17b}] run replaceitem block ~ ~ ~ container.17 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:18b}] run replaceitem block ~ ~ ~ container.18 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run replaceitem block ~ ~ ~ container.19 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run replaceitem block ~ ~ ~ container.23 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run replaceitem block ~ ~ ~ container.24 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run replaceitem block ~ ~ ~ container.25 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run replaceitem block ~ ~ ~ container.26 minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:27b}] run replaceitem block ~ ~ ~ container.27 minecraft:blast_furnace{du_gui:1b}

#copy items
data remove block -29999999 0 1601 Items
execute if score temp_1 mech_data matches 1.. run function du:player/inv/get_equipment
execute if score temp_1 mech_data matches 1.. run data modify block -29999999 0 1601 Items[{Slot:0b}].tag.mech_filter set from block ~ ~ ~ Items
execute if score temp_1 mech_data matches 1.. if data block -29999999 0 1601 Items[{Slot:0b}].tag.mech_filter[{}] run data modify block -29999999 0 1601 Items[{Slot:0b}].tag.Enchantments set value [{id:"mech:filter",lvl:1}]
execute if score temp_1 mech_data matches 1.. run function du:player/inv/restore_equipment

#remove filler
data remove block ~ ~ ~ Items[{tag:{du_gui:1b}}]
