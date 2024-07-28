
# Active Effects
execute store success entity @s item.tag.CustomModelData int 6422906 if entity @s
particle minecraft:smoke ~ ~1.2 ~ 0.1 0 0.1 0 15

# Reduce Counts
execute if data block ~ ~ ~ Items[{Slot:0b}] run item modify block ~ ~ ~ container.0 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:1b}] run item modify block ~ ~ ~ container.1 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:2b}] run item modify block ~ ~ ~ container.2 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:3b}] run item modify block ~ ~ ~ container.3 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:4b}] run item modify block ~ ~ ~ container.4 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:5b}] run item modify block ~ ~ ~ container.5 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:6b}] run item modify block ~ ~ ~ container.6 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:7b}] run item modify block ~ ~ ~ container.7 mechanization:decrement_count
execute if data block ~ ~ ~ Items[{Slot:8b}] run item modify block ~ ~ ~ container.8 mechanization:decrement_count
