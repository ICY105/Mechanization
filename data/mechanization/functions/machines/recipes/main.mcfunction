
#machine frames split
execute if data block ~ ~ ~ Items[].tag.ctc.traits."machine_frame/tier1" run function mechanization:machines/recipes/recipes_t1
execute if data block ~ ~ ~ Items[].tag.ctc.traits."machine_frame/tier2" run function mechanization:machines/recipes/recipes_t2
execute if data block ~ ~ ~ Items[].tag.ctc.traits."machine_frame/tier3" run function mechanization:machines/recipes/recipes_t3

#other
execute if predicate mechanization:recipes/machines/pipe run loot replace block ~ ~ ~ container.16 loot mechanization:machines/liquid_pipe_x2
execute if predicate mechanization:recipes/machines/spawner_mover run loot replace block ~ ~ ~ container.16 loot mechanization:machines/spawner_mover
execute if predicate mechanization:recipes/machines/super_piston run loot replace block ~ ~ ~ container.16 loot mechanization:machines/super_piston
execute if predicate mechanization:recipes/machines/super_sticky_piston run loot replace block ~ ~ ~ container.16 loot mechanization:machines/super_sticky_piston
execute if predicate mechanization:recipes/machines/turn_table run loot replace block ~ ~ ~ container.16 loot mechanization:machines/turn_table
