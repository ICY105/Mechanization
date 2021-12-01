
#stop loop
scoreboard players remove temp_0 mechanization.data 0

#add filler
execute store result score temp_1 mechanization.data run data get block ~ ~ ~ Items
execute unless data block ~ ~ ~ Items[{Slot:0b}] run item replace block ~ ~ ~ container.0 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run item replace block ~ ~ ~ container.1 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run item replace block ~ ~ ~ container.2 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run item replace block ~ ~ ~ container.3 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run item replace block ~ ~ ~ container.4 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run item replace block ~ ~ ~ container.5 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run item replace block ~ ~ ~ container.6 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:7b}] run item replace block ~ ~ ~ container.7 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run item replace block ~ ~ ~ container.8 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:9b}] run item replace block ~ ~ ~ container.9 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run item replace block ~ ~ ~ container.10 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run item replace block ~ ~ ~ container.11 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run item replace block ~ ~ ~ container.12 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:13b}] run item replace block ~ ~ ~ container.13 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:14b}] run item replace block ~ ~ ~ container.14 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run item replace block ~ ~ ~ container.15 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run item replace block ~ ~ ~ container.16 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:17b}] run item replace block ~ ~ ~ container.17 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:18b}] run item replace block ~ ~ ~ container.18 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run item replace block ~ ~ ~ container.19 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run item replace block ~ ~ ~ container.20 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run item replace block ~ ~ ~ container.21 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run item replace block ~ ~ ~ container.22 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run item replace block ~ ~ ~ container.23 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run item replace block ~ ~ ~ container.24 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run item replace block ~ ~ ~ container.25 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run item replace block ~ ~ ~ container.26 with minecraft:blast_furnace{du_gui:1b}
execute unless data block ~ ~ ~ Items[{Slot:27b}] run item replace block ~ ~ ~ container.27 with minecraft:blast_furnace{du_gui:1b}

#copy items
data remove block -29999999 0 1601 Items
execute if score temp_1 mechanization.data matches 1.. run function du:player/inv/get_equipment
execute if score temp_1 mechanization.data matches 1.. run data modify block -29999999 0 1601 Items[{Slot:0b}].tag.mech_filter set from block ~ ~ ~ Items
execute if score temp_1 mechanization.data matches 1.. if data block -29999999 0 1601 Items[{Slot:0b}].tag.mech_filter[{}] run data modify block -29999999 0 1601 Items[{Slot:0b}].tag.Enchantments set value [{id:"mech:filter",lvl:1}]
execute if score temp_1 mechanization.data matches 1.. run function du:player/inv/restore_equipment

#remove filler
data remove block ~ ~ ~ Items[{tag:{du_gui:1b}}]
