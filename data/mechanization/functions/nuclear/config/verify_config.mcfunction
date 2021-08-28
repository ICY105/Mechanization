
scoreboard players set $temp_0 mech_data 0

# [0,1] Decrease reactor explosion size to prevent griefing.
execute unless score $nuclear.cf.small_explosion mech_data matches 0..1 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$nuclear.cf.small_explosion]","color":"green"}]

# [0,10000] Fission Reactor power output modifier (in percent)
execute unless score $nuclear.cf.fission_modifier mech_data matches 0..10000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$nuclear.cf.fission_modifier]","color":"green"}]

# [1,2000000000] How much power a Steam Turbine can handle
execute unless score $nuclear.cf.turbine_power mech_data matches 1..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$nuclear.cf.turbine_power]","color":"green"}]
scoreboard players operation $nuclear.cf.turbine_power mech_data *= $cons.5 du_data

#load default if errors
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run tellraw @a [{"text":"Found Errors in nuclear_config, loading default values.","color":"red"}]
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run function mechanization:nuclear/config/default_config

