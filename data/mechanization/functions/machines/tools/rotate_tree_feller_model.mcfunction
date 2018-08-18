
execute as @s[nbt={Rotation:[-90f,0f]}] run data merge entity @s {Rotation:[270f,0f]}
execute as @s[nbt={Rotation:[-180f,0f]}] run data merge entity @s {Rotation:[180f,0f]}
execute as @s[nbt={Rotation:[-270f,0f]}] run data merge entity @s {Rotation:[90f,0f]}
execute as @s[nbt={Rotation:[-359.99f,0f]}] run data merge entity @s {Rotation:[0.01f,0f]}

execute as @s[nbt={Rotation:[270f,0f]}] run data merge entity @s {Rotation:[-0.01f,0f]}
execute as @s[nbt={Rotation:[180f,0f]}] run data merge entity @s {Rotation:[270f,0f]}
execute as @s[nbt={Rotation:[90f,0f]}] run data merge entity @s {Rotation:[180f,0f]}
execute as @s[nbt={Rotation:[0.01f,0f]}] run data merge entity @s {Rotation:[90f,0f]}
execute as @s[nbt={Rotation:[-0.01f,0f]}] run data merge entity @s {Rotation:[0.01f,0f]}

execute if entity @s[nbt={Rotation:[270f,0f]}] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~0.2 ~ ~
execute if entity @s[nbt={Rotation:[180f,0f]}] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~-0.2
execute if entity @s[nbt={Rotation:[90f,0f]}] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~-0.2 ~ ~
execute if entity @s[nbt={Rotation:[0.01f,0f]}] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~0.2

execute if entity @s[nbt={Rotation:[-180f,0f]}] run data merge entity @s {Rotation:[180f,0f]}
execute if entity @s[nbt={Rotation:[-90f,0f]}] run data merge entity @s {Rotation:[270f,0f]}
