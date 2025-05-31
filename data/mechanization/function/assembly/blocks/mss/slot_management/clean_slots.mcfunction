
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace

execute unless items block ~ ~ ~ container.0 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 0}
execute unless items block ~ ~ ~ container.1 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 1}
execute unless items block ~ ~ ~ container.2 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 2}
execute unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 3}
execute unless items block ~ ~ ~ container.4 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 4}
execute unless items block ~ ~ ~ container.5 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 5}
execute unless items block ~ ~ ~ container.6 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 6}
execute unless items block ~ ~ ~ container.7 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 7}
execute unless items block ~ ~ ~ container.8 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 8}

execute unless items block ~ ~ ~ container.9 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 9}
execute unless items block ~ ~ ~ container.10 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 10}
execute unless items block ~ ~ ~ container.11 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 11}
execute unless items block ~ ~ ~ container.12 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 12}
execute unless items block ~ ~ ~ container.13 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 13}
execute unless items block ~ ~ ~ container.14 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 14}
execute unless items block ~ ~ ~ container.15 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 15}
execute unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 16}

execute unless items block ~ ~ ~ container.18 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 18}
execute unless items block ~ ~ ~ container.19 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 19}
execute unless items block ~ ~ ~ container.20 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 20}
execute unless items block ~ ~ ~ container.21 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 21}
execute unless items block ~ ~ ~ container.22 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 22}
execute unless items block ~ ~ ~ container.23 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 23}
execute unless items block ~ ~ ~ container.24 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 24}
execute unless items block ~ ~ ~ container.25 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 25}
execute unless items block ~ ~ ~ container.26 *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/slot_management/m.clean_slot {slot: 26}

execute if items block -30000000 0 3201 container.* * run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
