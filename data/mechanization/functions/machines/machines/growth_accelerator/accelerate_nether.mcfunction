execute if block ~ ~2 ~ wheat store success score temp_0 mech_data run setblock ~ ~2 ~ wheat[age=7]
execute if block ~ ~2 ~ potatoes store success score temp_0 mech_data run setblock ~ ~2 ~ potatoes[age=7]
execute if block ~ ~2 ~ carrots store success score temp_0 mech_data run setblock ~ ~2 ~ carrots[age=7]

execute if block ~ ~2 ~ pumpkin_stem run function mechanization:machines/machines/growth_accelerator/pumpkin_stem
execute if block ~ ~2 ~ melon_stem run function mechanization:machines/machines/growth_accelerator/melon_stem

execute if block ~ ~2 ~ beetroots store success score temp_0 mech_data run setblock ~ ~2 ~ beetroots[age=3]
execute if block ~ ~2 ~ nether_wart store success score temp_0 mech_data run setblock ~ ~2 ~ nether_wart[age=3]
execute if block ~ ~2 ~ cocoa store success score temp_0 mech_data run setblock ~ ~2 ~ cocoa[age=2]

execute if block ~ ~2 ~ sugar_cane if block ~ ~3 ~ air store success score temp_0 mech_data run setblock ~ ~3 ~ sugar_cane
execute if block ~ ~2 ~ sugar_cane if block ~ ~4 ~ air store success score temp_0 mech_data run setblock ~ ~4 ~ sugar_cane
execute if block ~ ~2 ~ cactus if block ~ ~3 ~ air store success score temp_0 mech_data run setblock ~ ~3 ~ cactus
execute if block ~ ~2 ~ cactus if block ~ ~4 ~ air store success score temp_0 mech_data run setblock ~ ~4 ~ cactus