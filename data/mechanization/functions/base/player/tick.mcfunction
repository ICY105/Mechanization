
# Get item id length
scoreboard players set @s mechanization.item_id 0
execute store result score @s mechanization.item_id run data get entity @s SelectedItem.tag.mechanization.id

# Check Manual
loot give @s[tag=!mechanization.has_manual] loot mechanization:base/manual/start
execute if data entity @s[tag=!mechanization.has_manual] Inventory[].tag.mechanization{id:"mechanical_manual"} run tag @s add mechanization.has_manual
execute if score @s mechanization.item_id matches 17 if data entity @s SelectedItem.tag.mechanization{id:"mechanical_manual"} run function mechanization:base/player/manual/check

# Clear GUI items
execute if data entity @s Inventory[].tag.mechanization{gui_item:1b} run clear @s #mechanization:gui_item{mechanization:{gui_item:1b}}
