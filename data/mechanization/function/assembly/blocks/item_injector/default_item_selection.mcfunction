
scoreboard players set #slot mechanization.data -1
execute if block ~ ~ ~ #mechanization:furnace-like store result score #slot mechanization.data run function mechanization:assembly/blocks/item_injector/item_selection_furnace
execute if block ~ ~ ~ minecraft:brewing_stand store result score #slot mechanization.data run function mechanization:assembly/blocks/item_injector/item_selection_brewing_stand
execute if block ~ ~ ~ #minecraft:campfires store result score #slot mechanization.data run function mechanization:assembly/blocks/item_injector/item_selection_campfire
execute if block ~ ~ ~ #mechanization:inv_5 store result score #slot mechanization.data run function mechanization:assembly/blocks/item_injector/item_selection_5
execute if block ~ ~ ~ #mechanization:inv_9 store result score #slot mechanization.data run function mechanization:assembly/blocks/item_injector/item_selection_9
execute if block ~ ~ ~ #mechanization:inv_27 store result score #slot mechanization.data run function mechanization:assembly/blocks/item_injector/item_selection_27
execute if score #slot mechanization.data matches 0.. run scoreboard players set #allowed mechanization.data 1
