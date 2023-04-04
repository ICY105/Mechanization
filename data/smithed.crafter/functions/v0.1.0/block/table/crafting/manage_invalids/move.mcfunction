####################
# Moves invalid items
####################

# Move the item slots around
scoreboard players set @s smithed.data 0
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 2b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 2b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 3b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 3b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 4b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 4b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 11b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 11b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 12b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 12b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 13b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 13b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 20b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 20b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 21b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 21b
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 22b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 22b


# If things are still invalid, just throw them out instead
execute if entity @s[predicate=smithed.crafter:block/table/invalid_items] run function smithed.crafter:v0.1.0/block/table/crafting/manage_invalids/export
