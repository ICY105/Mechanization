
# rotate armor stand
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[-90f,0f]}] run data merge entity @s {Rotation:[270f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[-180f,0f]}] run data merge entity @s {Rotation:[180f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[-270f,0f]}] run data merge entity @s {Rotation:[90f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[-359.99f,0f]}] run data merge entity @s {Rotation:[0.01f,0f]}

execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[270f,0f]}] run data merge entity @s {Rotation:[-0.01f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[180f,0f]}] run data merge entity @s {Rotation:[270f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[90f,0f]}] run data merge entity @s {Rotation:[180f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[0.01f,0f]}] run data merge entity @s {Rotation:[90f,0f]}
execute if entity @s[type=minecraft:armor_stand,nbt={Rotation:[-0.01f,0f]}] run data merge entity @s {Rotation:[0.01f,0f]}

# rotate item display
execute if entity @s[type=minecraft:item_display] run tp @s ~ ~ ~ ~90 ~

# rotate item frame
execute if entity @s[type=#mechanization:item_frames,nbt={ItemRotation:2b}] run data merge entity @s {ItemRotation:1b}
execute if entity @s[type=#mechanization:item_frames,nbt={ItemRotation:4b}] run data merge entity @s {ItemRotation:2b}
execute if entity @s[type=#mechanization:item_frames,nbt={ItemRotation:6b}] run data merge entity @s {ItemRotation:4b}
execute if entity @s[type=#mechanization:item_frames,nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:6b}
execute if entity @s[type=#mechanization:item_frames,nbt={ItemRotation:1b}] run data merge entity @s {ItemRotation:0b}
