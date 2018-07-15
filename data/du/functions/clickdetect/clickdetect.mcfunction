
execute if entity @s[nbt={SelectedItem:{ tag:{du_click_detect:1b} }}] run function du:clickdetect/normal_detection
execute if entity @s[tag=du_click_normal_active] if entity @s[nbt=!{SelectedItem:{ tag:{du_click_detect:1b} }}] run function du:clickdetect/normal_detection_end
