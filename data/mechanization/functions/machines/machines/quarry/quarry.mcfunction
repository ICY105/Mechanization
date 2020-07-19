
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data
execute unless score @s du_move_x matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.du_move_x
execute unless score @s du_move_y matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.du_move_y
execute unless score @s du_move_z matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.du_move_z

#main
function du:world/blocks/is_active

execute unless score @s du_move_y matches 1..4 run scoreboard players set @s mech_data 0
execute if score $world.out_0 du_data matches 0 if entity @s[scores={du_move_y=1,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 0 0 run function mechanization:machines/machines/quarry/mine
execute if score $world.out_0 du_data matches 0 if entity @s[scores={du_move_y=2,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 90 0 run function mechanization:machines/machines/quarry/mine
execute if score $world.out_0 du_data matches 0 if entity @s[scores={du_move_y=3,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 180 0 run function mechanization:machines/machines/quarry/mine
execute if score $world.out_0 du_data matches 0 if entity @s[scores={du_move_y=4,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 270 0 run function mechanization:machines/machines/quarry/mine

execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgraded,scores={du_move_y=1,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 0 0 run function mechanization:machines/machines/quarry/mine
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgraded,scores={du_move_y=2,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 90 0 run function mechanization:machines/machines/quarry/mine
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgraded,scores={du_move_y=3,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 180 0 run function mechanization:machines/machines/quarry/mine
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgraded,scores={du_move_y=4,du_move_x=1..31,du_move_z=1..31,mech_data=0..,mech_power=64..}] rotated 270 0 run function mechanization:machines/machines/quarry/mine


#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data
execute store result entity @s ArmorItems[3].tag.du_move_x int 1 run scoreboard players get @s du_move_x
execute store result entity @s ArmorItems[3].tag.du_move_y int 1 run scoreboard players get @s du_move_y
execute store result entity @s ArmorItems[3].tag.du_move_z int 1 run scoreboard players get @s du_move_z

#cleanup
data merge entity @s {Fire:32676}
execute unless block ~ ~ ~ barrel run function mechanization:base/utils/break_machine_t2
