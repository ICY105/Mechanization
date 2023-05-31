
execute if score #cable.in energy.data matches 1 if entity @s[tag=mechanization.solar_panel] run scoreboard players set #cable.out energy.data 0
execute if score #cable.in energy.data matches 2..5 if entity @s[tag=mechanization.auto_farm] run scoreboard players set #cable.out energy.data 0
execute if score #cable.in energy.data matches 1 if entity @s[tag=mechanization.energy_relay] run scoreboard players set #cable.out energy.data 0
