
data modify storage mechanization:temp obj set value {}
data modify storage mechanization:temp obj set from entity @p[tag=mechanization.interacted,distance=..12] SelectedItem

execute if entity @s[tag=mechanization.block_hitbox.reactor_core] unless data storage mechanization:temp obj.id align xyz positioned ~ ~1 ~ as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/remove_fuel
execute if entity @s[tag=mechanization.block_hitbox.reactor_core] if data storage mechanization:temp obj.tag.mechanization{id:"mox_fuel_rod"} align xyz positioned ~ ~1 ~ as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/add_fuel
execute if entity @s[tag=mechanization.block_hitbox.reactor_core] if data storage mechanization:temp obj.tag.mechanization{id:"uranium_fuel_rod"} align xyz positioned ~ ~1 ~ as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/reactor_core/add_fuel
