
advancement revoke @s only mechanization:triggers/has_gui_item

scoreboard players set #success mechanization.data 0
execute store success score #success mechanization.data run clear @s #mechanization:gui_item[minecraft:custom_data~{mechanization:{gui_interact:1b}}]
execute if score #success mechanization.data matches 1 run playsound minecraft:ui.button.click block @s

clear @s #mechanization:gui_item[minecraft:custom_data~{mechanization:{gui_item:1b}}]
