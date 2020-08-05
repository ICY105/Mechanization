
data modify storage du:temp list set from block ~ ~ ~ Items
execute unless data storage du:temp list[{Slot:0b}].tag.mss{slot:0b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_0
execute unless data storage du:temp list[{Slot:1b}].tag.mss{slot:1b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_1
execute unless data storage du:temp list[{Slot:2b}].tag.mss{slot:2b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_2
execute unless data storage du:temp list[{Slot:3b}].tag.mss{slot:3b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_3
execute unless data storage du:temp list[{Slot:4b}].tag.mss{slot:4b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_4
execute unless data storage du:temp list[{Slot:5b}].tag.mss{slot:5b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_5
execute unless data storage du:temp list[{Slot:6b}].tag.mss{slot:6b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_6
execute unless data storage du:temp list[{Slot:7b}].tag.mss{slot:7b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_7
execute unless data storage du:temp list[{Slot:8b}].tag.mss{slot:8b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_8

execute unless data storage du:temp list[{Slot:9b}].tag.mss{slot:9b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_9
execute unless data storage du:temp list[{Slot:10b}].tag.mss{slot:10b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_10
execute unless data storage du:temp list[{Slot:11b}].tag.mss{slot:11b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_11
execute unless data storage du:temp list[{Slot:12b}].tag.mss{slot:12b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_12
execute unless data storage du:temp list[{Slot:13b}].tag.mss{slot:13b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_13
execute unless data storage du:temp list[{Slot:14b}].tag.mss{slot:14b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_14
execute unless data storage du:temp list[{Slot:15b}].tag.mss{slot:15b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_15
execute unless data storage du:temp list[{Slot:16b}].tag.mss{slot:16b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_16
execute unless data storage du:temp list[{Slot:16b}].tag.mss{slot:17b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_17

execute if data storage du:temp list[{Slot:17b}].tag.mss{ui:1b} run replaceitem block ~ ~ ~ container.17 minecraft:air
execute if data storage du:temp list[{Slot:17b}].tag.mss run data modify block -29999999 0 1601 Items append from block ~ ~ ~ Items[{Slot:17b}]
execute if data storage du:temp list[{Slot:17b}].tag.mss run replaceitem block ~ ~ ~ container.17 minecraft:air

execute unless data storage du:temp list[{Slot:18b}].tag.mss{slot:18b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_18
execute unless data storage du:temp list[{Slot:19b}].tag.mss{slot:19b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_19
execute unless data storage du:temp list[{Slot:20b}].tag.mss{slot:20b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_20
execute unless data storage du:temp list[{Slot:21b}].tag.mss{slot:21b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_21
execute unless data storage du:temp list[{Slot:22b}].tag.mss{slot:22b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_22
execute unless data storage du:temp list[{Slot:23b}].tag.mss{slot:23b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_23
execute unless data storage du:temp list[{Slot:24b}].tag.mss{slot:24b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_24
execute unless data storage du:temp list[{Slot:25b}].tag.mss{slot:25b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_25
execute unless data storage du:temp list[{Slot:26b}].tag.mss{slot:26b} run function mechanization:assembly/machines/mss/terminal_verify_slots/remove_slot_26
