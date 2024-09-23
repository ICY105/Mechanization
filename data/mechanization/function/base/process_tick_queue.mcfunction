
scoreboard players remove #loop mechanization.data 1
execute store result storage mechanization:temp var int 1 run scoreboard players get #loop mechanization.data
function mechanization:base/m.process_tick_queue_2 with storage mechanization:temp
execute if score #loop mechanization.data matches 1.. run function mechanization:base/process_tick_queue
