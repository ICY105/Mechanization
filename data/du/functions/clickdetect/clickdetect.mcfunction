
execute if entity @s[nbt={SelectedItem:{ tag:{du_click_detect:1b} }}] run function du:clickdetect/normal_detection
execute if entity @s[nbt=!{SelectedItem:{ tag:{du_click_detect:1b} }},tag=du_click_normal_active] run function du:clickdetect/normal_detection_end

execute if entity @s[nbt={SelectedItem:{ tag:{du_click_detect:2b} }}] run function du:clickdetect/perfect_detection
execute if entity @s[nbt=!{SelectedItem:{ tag:{du_click_detect:2b} }},tag=du_click_perfect_active] run function du:clickdetect/perfect_detection_end