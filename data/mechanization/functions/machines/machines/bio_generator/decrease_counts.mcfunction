
# Active Effects
execute store success entity @s Item.tag.CustomModelData int 6422906 if entity @s
particle minecraft:smoke ~ ~1.2 ~ 0.1 0 0.1 0 15

# Reduce Counts
item modify block ~ ~ ~ container.0 mechanization:decrement_count
item modify block ~ ~ ~ container.1 mechanization:decrement_count
item modify block ~ ~ ~ container.2 mechanization:decrement_count
item modify block ~ ~ ~ container.3 mechanization:decrement_count
item modify block ~ ~ ~ container.4 mechanization:decrement_count
item modify block ~ ~ ~ container.5 mechanization:decrement_count
item modify block ~ ~ ~ container.6 mechanization:decrement_count
item modify block ~ ~ ~ container.7 mechanization:decrement_count
item modify block ~ ~ ~ container.8 mechanization:decrement_count
