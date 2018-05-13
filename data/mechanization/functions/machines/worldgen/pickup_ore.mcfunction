execute store success score temp_0 mech_data run clear @s minecraft:player_head{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000001"}} 1
execute if score temp_0 mech_data matches 1.. run function give:mech_machines/copper_ore

execute store success score temp_0 mech_data run clear @s minecraft:player_head{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000003"}} 1
execute if score temp_0 mech_data matches 1.. run function give:mech_machines/tin_ore

execute store success score temp_0 mech_data run clear @s minecraft:player_head{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000007"}} 1
execute if score temp_0 mech_data matches 1.. run function give:mech_machines/titanium_ore