scoreboard objectives add smithed.actionbar.temp dummy
scoreboard objectives add smithed.actionbar.const dummy
scoreboard objectives add smithed.actionbar.priority dummy
scoreboard objectives add smithed.actionbar.freeze dummy
scoreboard objectives add smithed.actionbar.sleep_t dummy
scoreboard objectives add smithed.actionbar.sneaking minecraft.custom:minecraft.sneak_time

scoreboard players set $default.freeze smithed.actionbar.const 20
scoreboard players set $max.freeze smithed.actionbar.const 50
scoreboard players set $min.freeze smithed.actionbar.const 0
scoreboard players set #100 smithed.actionbar.const 100

schedule function smithed.actionbar:v0.2.0/technical/tick 1
