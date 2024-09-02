
scoreboard players set #failed mechanization.data 0

# [0,1] Decrease reactor explosion size to prevent griefing.
execute unless score #nuclear.cf.small_explosion mechanization.data matches 0..1 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#nuclear.cf.small_explosion]","color":"green"}]

# [0,10000] Fission Reactor power output modifier (in percent)
execute unless score #nuclear.cf.fission_modifier mechanization.data matches 0..10000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#nuclear.cf.fission_modifier]","color":"green"}]

# [1,2000000000] How much power a Steam Turbine can handle
execute unless score #nuclear.cf.turbine_power mechanization.data matches 1..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#nuclear.cf.turbine_power]","color":"green"}]
scoreboard players operation #nuclear.cf.turbine_power mechanization.data *= #cons.5 mechanization.data

#load default if errors
execute if score #failed mechanization.data matches 1 run tellraw @a [{"text":"Found Errors in nuclear_config, loading default values.","color":"red"}]
execute if score #failed mechanization.data matches 1 run function mechanization:nuclear/config/default_config

