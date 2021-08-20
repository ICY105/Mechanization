
scoreboard players set $temp_0 mech_data 0

# [0,1] Decrease reactor explosion size to prevent griefing.
execute unless score $nuclear.cf.small_explosion mech_data matches 0..1 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$nuclear.cf.small_explosion]","color":"green"}]

#load default if errors
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run tellraw @a [{"text":"Found Errors in nuclear_config, loading default values.","color":"red"}]
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run function mechanization:nuclear/config/default_config

