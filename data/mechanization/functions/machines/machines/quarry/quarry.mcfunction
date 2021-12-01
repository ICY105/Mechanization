
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.data matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.mech_data
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_move_x matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.du_move_x
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_move_y matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.du_move_y
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_move_z matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.du_move_z

#main
function du:world/blocks/is_active

execute unless score @s du_move_y matches 1..4 run scoreboard players set @s mechanization.data 0
execute if data block ~ ~ ~ Items[26] run scoreboard players set $world.out_0 du_data 1

scoreboard players operation in_3 mechanization.data = $machines.cf.quarry.speed mech_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation in_3 mechanization.data = $machines.cf.quarry.speed_mu mech_data

execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.quarry.power mechanization.data if entity @s[scores={du_move_y=1,du_move_x=1..31,du_move_z=1..31,mech_data=0..}] rotated 0 0 run function mechanization:machines/machines/quarry/mine_count
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.quarry.power mechanization.data if entity @s[scores={du_move_y=2,du_move_x=1..31,du_move_z=1..31,mech_data=0..}] rotated 90 0 run function mechanization:machines/machines/quarry/mine_count
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.quarry.power mechanization.data if entity @s[scores={du_move_y=3,du_move_x=1..31,du_move_z=1..31,mech_data=0..}] rotated 180 0 run function mechanization:machines/machines/quarry/mine_count
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.quarry.power mechanization.data if entity @s[scores={du_move_y=4,du_move_x=1..31,du_move_z=1..31,mech_data=0..}] rotated 270 0 run function mechanization:machines/machines/quarry/mine_count

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.du_move_x int 1 run scoreboard players get @s du_move_x
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.du_move_y int 1 run scoreboard players get @s du_move_y
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.du_move_z int 1 run scoreboard players get @s du_move_z

#cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t2
