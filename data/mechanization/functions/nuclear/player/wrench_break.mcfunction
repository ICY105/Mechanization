
# Reactor Core
execute if entity @s[tag=mechanization.reactor_core] run loot spawn ~ ~ ~ loot mechanization:nuclear/reactor_core
execute if entity @s[tag=mechanization.reactor_core] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.reactor_core]


# Moderator Cell
execute if entity @s[tag=mechanization.moderator_cell] run function mechanization:nuclear/blocks/moderator_cell/break

