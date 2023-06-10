
execute if entity @s[type=minecraft:item_display,tag=mechanization.tinker_table,tag=mechanization.active] at @s run function mechanization:gadgets/blocks/tinker_table/tinker_table_active
execute if entity @s[type=minecraft:item_display,tag=mechanization.energy_saber] at @s run function mechanization:gadgets/player/energy_saber/saber_projectile
execute if entity @s[type=minecraft:marker,tag=mechanization.bullet] at @s run function mechanization:gadgets/player/firearms/bullet/raycast
