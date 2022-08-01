scoreboard objectives add smithed.inv_change dummy

data modify storage smithed.crafter:input flags set value []
schedule function smithed.crafter:impl/v0.0.3/technical/slow_tick 5 replace
schedule function smithed.crafter:impl/v0.0.3/technical/tick 1 replace
