# @public

# get the message input
# @s = player that needs a new actionbar shown
# location undefined; based on how the user calls the function
# run from #smithed.actionbar:message

# force-give player a priority score
scoreboard players add @s smithed.actionbar.priority 0

# if there is a message, but they forgot the priority, it should be the default
execute if data storage smithed.actionbar:input message run scoreboard players set $priority smithed.actionbar.temp 99

# convert string priority into number
#  if we introduce new priorities in future versions
#  we can renumber our ints w/o issues
execute if data storage smithed.actionbar:input message{priority: "override"} run scoreboard players set $priority smithed.actionbar.temp 1
execute if data storage smithed.actionbar:input message{priority: "notification"} run scoreboard players set $priority smithed.actionbar.temp 2
execute if data storage smithed.actionbar:input message{priority: "conditional"} run scoreboard players set $priority smithed.actionbar.temp 3
execute if data storage smithed.actionbar:input message{priority: "persistent"} run scoreboard players set $priority smithed.actionbar.temp 4
execute unless data storage smithed.actionbar:input message.priority run scoreboard players set $priority smithed.actionbar.temp 99

# grab freeze
#  load default freeze if not defined
execute store result score $freeze smithed.actionbar.temp run data get storage smithed.actionbar:input message.freeze
execute unless data storage smithed.actionbar:input message.freeze run scoreboard players operation $freeze smithed.actionbar.temp = $default.freeze smithed.actionbar.const



# to determine if we display
#  if priority is the same or lower AND current priority is not "override"
#  OR if player has no shown actionbar
#    then display the message
execute unless score @s smithed.actionbar.priority matches 1 if score $priority smithed.actionbar.temp <= @s smithed.actionbar.priority run function smithed.actionbar:v0.4.1/display




execute if score @s smithed.actionbar.priority matches 0 run function smithed.actionbar:v0.4.1/display
