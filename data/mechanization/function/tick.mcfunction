
function mechanization:base/main
function mechanization:machines/main
function mechanization:nuclear/main
function mechanization:gadgets/main
function mechanization:assembly/main

execute as @e[type=#mechanization:valid_block_entities,tag=mechanization.ticking] at @s run function #mechanization:rapid_tick
