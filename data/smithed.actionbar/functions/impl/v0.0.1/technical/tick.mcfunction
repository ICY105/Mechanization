# reset scores when at 1
execute as @a[scores={smithed.actionbar.freeze=1}] run function smithed.actionbar:impl/v0.0.1/reset

# decrement everyone's score
#  store whether we found anyone or not
execute store success score $loop smithed.actionbar.temp run scoreboard players remove @a[scores={smithed.actionbar.freeze=1..}] smithed.actionbar.freeze 1

# only loop if we are removing scores
execute if score $loop smithed.actionbar.temp matches 1.. run schedule function smithed.actionbar:impl/v0.0.1/technical/tick 1 replace
