
execute if entity @s[tag=mechanization.reactor_core] run function mechanization:nuclear/blocks/reactor_core/break_hard
execute if entity @s[tag=mechanization.reactor_core] run scoreboard players set #custom mechanization.data 1
