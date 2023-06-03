
execute if entity @s[type=armor_stand,tag=mechanization.tree_feller.model,tag=mechanization.active] run function mechanization:machines/blocks/tree_feller/tree_feller_model
execute if score #timer.2 mechanization.data matches 0 if entity @s[type=minecraft:item_display,tag=mechanization.lightning_generator] run function mechanization:machines/blocks/lightning_generator/lightning_generator
