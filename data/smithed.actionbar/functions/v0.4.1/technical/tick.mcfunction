# loop every tick
schedule function smithed.actionbar:v0.4.1/technical/tick 1 replace

# reset scores when at 1
execute as @a[scores={smithed.actionbar.freeze=1}] run function smithed.actionbar:v0.4.1/reset

# decrement everyone's score
scoreboard players remove @a[scores={smithed.actionbar.freeze=1..}] smithed.actionbar.freeze 1

# reset sneak_time score
scoreboard players reset @a smithed.actionbar.sneaking

# reset sleeping tag
tag @a[tag=smithed.actionbar.sleeping, nbt={SleepTimer: 101s}] remove smithed.actionbar.sleeping
tag @a[tag=smithed.actionbar.sleeping, scores={smithed.actionbar.sleep_t=0}, nbt={SleepTimer: 0s}] remove smithed.actionbar.sleeping
scoreboard players remove @a[scores={smithed.actionbar.sleep_t=1..}] smithed.actionbar.sleep_t 1
