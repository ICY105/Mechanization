
execute store result score temp_3 du_data run data get entity @s SelectedItem.tag.du_click_detect

execute if score temp_3 du_data matches 0 if entity @s[tag=du_click_active] run function du:clickdetect/click_detection_end
execute if score temp_3 du_data matches 1 run function du:clickdetect/click_detection
execute if score temp_3 du_data matches 3 run function du:clickdetect/click_detection_3
execute if score temp_3 du_data matches 5 run function du:clickdetect/click_detection_5

