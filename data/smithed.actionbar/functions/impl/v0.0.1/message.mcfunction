# @public

# smithed.actionbar:input message
# 	raw or json
# 	priority
# 	freeze

# convert str into int
#  if we introduce new priorities in future versions
#  we can renumber our ints w/o issues
execute if data storage smithed.actionbar:input message{priority: "override"} run scoreboard players set $priority smithed.actionbar.temp 1
execute if data storage smithed.actionbar:input message{priority: "notification"} run scoreboard players set $priority smithed.actionbar.temp 2
execute if data storage smithed.actionbar:input message{priority: "conditional"} run scoreboard players set $priority smithed.actionbar.temp 3
execute if data storage smithed.actionbar:input message{priority: "persistent"} run scoreboard players set $priority smithed.actionbar.temp 4

# grab freeze
#  load default freeze if not defined
execute store result score $freeze smithed.actionbar.temp run data get storage smithed.actionbar:input message.freeze
execute unless data storage smithed.actionbar:input message.freeze run scoreboard players operation $freeze smithed.actionbar.temp = $default.freeze smithed.actionbar.const

# determine if display
#  if priority is the same, chk if freeze is 1..
#  OR if priority is strictly lower,
#    display

tellraw @a [{"score": {"objective": "smithed.actionbar.temp", "name": "$priority"}}, {"score": {"objective": "smithed.actionbar.priority", "name": "@s"}}]

execute if score $priority smithed.actionbar.temp = @s smithed.actionbar.priority unless score @s smithed.actionbar.freeze matches 1.. run function smithed.actionbar:impl/v0.0.1/display
execute if score $priority smithed.actionbar.temp < @s smithed.actionbar.priority run function smithed.actionbar:impl/v0.0.1/display

# cleanup
data remove storage smithed.actionbar:input message
