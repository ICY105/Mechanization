# yes, if you define raw and json, you'll get 2 messages
#  i left this "bug" in so that folks catch this in testing

execute if data storage smithed.actionbar:input message.raw run title @s actionbar {"storage": "smithed.actionbar:input", "nbt": "message.raw"}
execute if data storage smithed.actionbar:input message.json run title @s actionbar {"storage": "smithed.actionbar:input", "nbt": "message.json", "resolved": true}

# copy freeze w/ bounds checking
scoreboard players operation @s smithed.actionbar.freeze = $freeze smithed.actionbar.temp
scoreboard players operation @s smithed.actionbar.freeze < $min.freeze smithed.actionbar.const
scoreboard players operation @s smithed.actionbar.freeze > $max.freeze smithed.actionbar.const

# unless freeze is explicitly 0, copy priority
#  allows folks to let their messages disappear
#  prolly won't interact nicely w/ persistent messages
execute unless score @s smithed.actionbar.freeze matches 0 run scoreboard players operation @s smithed.actionbar.priority = $priority smithed.actionbar.temp

# this loop will end when there is no one to process :)
schedule function smithed.actionbar:impl/v0.0.1/technical/tick 1 replace
