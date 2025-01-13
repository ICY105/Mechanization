
scoreboard players set #success mechanization.data 0

execute if items block ~ ~ ~ container.10 minecraft:book unless entity @s[tag=mechanization.upgraded.ender] run return fail
execute if items block ~ ~ ~ container.10 minecraft:enchanted_book unless entity @s[tag=mechanization.upgraded.ender] run return fail

# move enchants
data modify storage mechanization:temp obj set value {target_enchantments:{}, source_enchantments:{}, enchantment: {}, pointer: -1}
execute unless items block ~ ~ ~ container.10 minecraft:enchanted_book run data modify storage mechanization:temp obj.target_enchantments set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:enchantments".levels
execute if items block ~ ~ ~ container.10 minecraft:enchanted_book run data modify storage mechanization:temp obj.target_enchantments set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:stored_enchantments".levels
execute unless items block ~ ~ ~ container.12 minecraft:enchanted_book run data modify storage mechanization:temp obj.source_enchantments set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:enchantments".levels
execute if items block ~ ~ ~ container.12 minecraft:enchanted_book run data modify storage mechanization:temp obj.source_enchantments set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:stored_enchantments".levels

execute store result score #loop mechanization.data run data get storage mechanization:registry enchantments
function mechanization:machines/blocks/enchanting_station/enchant_item/add_enchant_loop

execute if score #success mechanization.data matches 0 run return fail

# cleanup
execute if items block ~ ~ ~ container.10 minecraft:book run item replace block ~ ~ ~ container.10 with minecraft:enchanted_book

execute unless items block ~ ~ ~ container.10 minecraft:enchanted_book run data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:enchantments" set from storage mechanization:temp obj.target_enchantments
execute if items block ~ ~ ~ container.10 minecraft:enchanted_book run data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:stored_enchantments" set from storage mechanization:temp obj.target_enchantments
execute unless items block ~ ~ ~ container.12 minecraft:enchanted_book run data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:enchantments" set from storage mechanization:temp obj.source_enchantments
execute if items block ~ ~ ~ container.12 minecraft:enchanted_book run data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:stored_enchantments" set from storage mechanization:temp obj.source_enchantments

execute if items block ~ ~ ~ container.12 minecraft:enchanted_book[minecraft:stored_enchantments={}] run item replace block ~ ~ ~ container.12 with minecraft:air

playsound minecraft:block.enchantment_table.use block @a[distance=..16]
item replace block ~ ~ ~ container.14 from block ~ ~ ~ container.10
item replace block ~ ~ ~ container.10 with minecraft:air
scoreboard players remove @s energy.storage 1000
execute if score @s fluid.storage.0 matches 0 run data modify entity @s item.tag.fluids[0] set value {}
