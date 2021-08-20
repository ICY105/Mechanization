
scoreboard players set $temp_0 mech_data 0

# [0,1] Disable block smelting effects from plasma weapons
execute unless score $gadgets.cf.plasma_smelt mech_data matches 0..1 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.plasma_smelt]","color":"green"}]

#load default if errors
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run tellraw @a [{"text":"Found Errors in gadgets_config, loading default values.","color":"red"}]
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run function mechanization:gadgets/config/default_config

