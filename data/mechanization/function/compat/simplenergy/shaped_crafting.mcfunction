
# simplunium
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:1b, id:"minecraft:air"},{Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:1b, id:"minecraft:air"},{Slot:2b, id:"minecraft:air"}],2:[{Slot:0b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:1b, id:"minecraft:air"},{Slot:2b, id:"minecraft:air"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:compat/simplunium_rod
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:1b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:1b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:2b, id:"minecraft:air"}],2:[]} run loot replace block ~ ~ ~ container.16 loot mechanization:compat/simplunium_plate
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"},{Slot:1b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:1b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:2b, tag:{simplenergy:{simplunium_ingot:1b}}}], 2:[{Slot:0b, id:"minecraft:air"},{Slot:1b, tag:{simplenergy:{simplunium_ingot:1b}}}, {Slot:2b, id:"minecraft:air"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:compat/simplunium_gear
