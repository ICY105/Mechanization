gamerule maxCommandChainLength 100000
gamerule commandBlockOutput false
scoreboard objectives add timer dummy

scoreboard players add @a timer 1
tp @p 0 100 0

gamerule gameLoopFunction mechanization:start
function mechanization:start_2 if @p[score_timer_min=40]