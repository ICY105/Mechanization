# @public

# @doc message
# @input Raw Message, storage, message.raw, smithed.actionbar:input
# @input JSON Message, storage, message.json, smithed.actionbar:input
# @input Priority Level, storage, message.priority, smithed.actionbar:input
# @input Message Duration, storage, message.freeze, smithed.actionbar:input
#
# Instead of using `/title` to display the message, set up the input storage and run the following command:
# ```mcfunction
# function #smithed.actionbar:message
# ```
# ## Message
# Messages can be set as strings or as json objects. To set a string, use `raw`, and to
# set a JSON object, use `json`. Below are examples for both types of messages. 
# If both fields are set, the json object is shown.  
# ### **Example of Raw Message** 
# ```mcfunction
# data modify storage smithed.actionbar:input message set value {
#    raw: 'hello world',
#    priority: 'persistent'
# }
# ```
# ### **Example of JSON Message**
# ```mcfunction
# data modify storage smithed.actionbar:input message set value {
#   json: '{"text": "You cannot complete this action!", "color": "red"}',
#   priority: 'notification'
# }
# ```
# ## Priority
# Priorities are set via specific strings. The list below shows the priority in descending order, 
# so for example notifications will show over conditional messages.
# * `override`: This is the highest priority and will always override the current message, no matter what.
# * `notification`: This is for brief, non-repeating, notification type messages, 
#                   such as the vanilla "You can't sleep now" message.
# * `conditional`: This should be used for any message which will display constantly on a condition. 
#                  A good example is displaying a compass HUD while you hold a compass or showcasing the amount of XP
#                  in a nearby tank. This doesn't include any persistent messages which toggle via a config option!
# * `persistent`: This is the lowest priority message and is designated for messages which always displays 
#                 (or displays continously if a config value is set). You can think of this as a custom ui display 
#                 such as in Manic or even the Vanilla Tweaks coordinate HUD which always displays.  
# ## Message Duration
# Additionally, you can also set a `freeze` field in the storage space. 
# This will deteremine how many ticks your message should be protected against other messages with the same priority. 
# By default, this field is set to 20, which corresponds to 1 second.
# ```mcfunction
# data modify storage smithed.actionbar:message input set value {
#   raw: 'Random Event!',
#   priority: 'notification',
#   freeze: 30
# }
# ```
# The freeze value has a minimum value of 0 and a maximum value of 50.


# get the message input
# @s = player that needs a new actionbar shown
# location undefined; based on how the user calls the function
# run from #smithed.actionbar:message

# force-give player a priority score
scoreboard players add @s smithed.actionbar.priority 0

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

# determine if display
#  if priority is the same, check if freeze is 1..
#  OR if priority is strictly lower,
#  OR if player has no shown actionbar
#    then display the message
execute if score $priority smithed.actionbar.temp = @s smithed.actionbar.priority unless score @s smithed.actionbar.freeze matches 1.. run function smithed.actionbar:v0.2.0/display
execute if score $priority smithed.actionbar.temp < @s smithed.actionbar.priority run function smithed.actionbar:v0.2.0/display
execute if score @s smithed.actionbar.priority matches 0 run function smithed.actionbar:v0.2.0/display

# cleanup
data remove storage smithed.actionbar:input message
