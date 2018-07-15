
effect give @s[nbt={SelectedItem:{ tag:{du_nerf:1b} }}] mining_fatigue 1 6 true

execute if score @s du_waxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_gaxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_saxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_iaxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_daxe matches 1.. run function du:raytrace/start_ray_stripped_log

execute if score @s du_wshovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_gshovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_sshovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_ishovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_dshovel matches 1.. run function du:raytrace/start_ray_path

execute if score @s du_whoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_ghoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_shoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_ihoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_dhoe matches 1.. run function du:raytrace/start_ray_farmland
