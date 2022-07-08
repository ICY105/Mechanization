
# set state
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 run tag @s[tag=energy.send] add energy.send
execute if score #active mechanization.data matches 0 run tag @s[tag=!energy.send] remove energy.send

# set capacity
scoreboard players operation @s energy.max_storage = #machines.cf.t2_battery.capacity mechanization.data
scoreboard players operation @s[tag=mechanization.upgraded] energy.max_storage = #machines.cf.t2_battery.capacity.machine_upgrade mechanization.data
scoreboard players operation @s[tag=mechanization.upgraded.ender] energy.max_storage = #machines.cf.t2_battery.capacity.ender_upgrade mechanization.data
scoreboard players operation @s[tag=mechanization.upgraded.nether] energy.max_storage = #machines.cf.t2_battery.capacity.nether_upgrade mechanization.data

# Creative Battery
scoreboard players operation @s[tag=mechanization.battery.creative] energy.storage = @s energy.max_storage
scoreboard players operation @s[tag=mechanization.battery.creative] energy.storage /= #cons.2 mechanization.data

# Ambient Sounds
execute if entity @s[scores={mechanization.data=1},tag=!mechanization.muffled] run playsound mechanization:base.battery_ambient block @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mechanization.data 1
scoreboard players set @s[scores={mechanization.data=3..}] mechanization.data 0

# Break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
