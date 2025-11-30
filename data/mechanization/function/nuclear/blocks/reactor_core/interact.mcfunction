
scoreboard players set #interact mechanization.data -1
execute if score #interact mechanization.data matches -1 unless items entity @p[tag=mechanization.interacted,distance=..64] weapon.mainhand * align xyz positioned ~ ~1 ~ as @n[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/remove_fuel
execute if score #interact mechanization.data matches -1 if items entity @p[tag=mechanization.interacted,distance=..64] weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"uranium_fuel_rod"}}] align xyz positioned ~ ~1 ~ as @n[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/add_fuel
execute if score #interact mechanization.data matches -1 if items entity @p[tag=mechanization.interacted,distance=..64] weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"plutonium_fuel_rod"}}] align xyz positioned ~ ~1 ~ as @n[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/add_fuel

