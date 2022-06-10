# @public

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0: [{item_tag: ["#minecraft:stone_crafting_materials"], Slot: 0b}, {item_tag: ["#minecraft:stone_crafting_materials"], Slot: 1b}, {id: "minecraft:air", Slot: 2b}], 1: [{item_tag: ["#minecraft:stone_crafting_materials"], Slot: 0b}, {item_tag: ["#minecraft:stone_crafting_materials"], Slot: 1b}, {id: "minecraft:air", Slot: 2b}]} if data storage smithed.crafter:input recipe{2: []} run loot replace block ~ ~ ~ container.16 loot smithed.crafter:blocks/table






