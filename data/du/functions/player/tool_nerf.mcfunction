
effect give @s weakness 1 127
effect give @s mining_fatigue 1 2

execute if score @s du_waxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_gaxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_saxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_iaxe matches 1.. run function du:raytrace/start_ray_stripped_log
execute if score @s du_daxe matches 1.. run function du:raytrace/start_ray_stripped_log

scoreboard players set @s du_waxe 0
scoreboard players set @s du_gaxe 0
scoreboard players set @s du_saxe 0
scoreboard players set @s du_iaxe 0
scoreboard players set @s du_daxe 0

execute if score @s du_wshovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_gshovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_sshovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_ishovel matches 1.. run function du:raytrace/start_ray_path
execute if score @s du_dshovel matches 1.. run function du:raytrace/start_ray_path

scoreboard players set @s du_wshovel 0
scoreboard players set @s du_gshovel 0
scoreboard players set @s du_sshovel 0
scoreboard players set @s du_ishovel 0
scoreboard players set @s du_dshovel 0

execute if score @s du_whoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_ghoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_shoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_ihoe matches 1.. run function du:raytrace/start_ray_farmland
execute if score @s du_dhoe matches 1.. run function du:raytrace/start_ray_farmland

scoreboard players set @s du_whoe 0
scoreboard players set @s du_ghoe 0
scoreboard players set @s du_shoe 0
scoreboard players set @s du_ihoe 0
scoreboard players set @s du_dhoe 0

