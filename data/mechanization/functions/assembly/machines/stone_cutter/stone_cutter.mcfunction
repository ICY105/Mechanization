
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

#main
execute if score @s mechanization.stored_energy matches 144.. if data block ~ ~ ~ Items[0] run data modify storage du:temp list set from block ~ ~ ~ Items
execute if score @s[nbt={ItemRotation:4b}] mechanization.stored_energy matches 144.. if data block ~ ~ ~ Items[0] rotated 180 0 run function mechanization:assembly/machines/stone_cutter/check_recipes
execute if score @s[nbt={ItemRotation:2b}] mechanization.stored_energy matches 144.. if data block ~ ~ ~ Items[0] rotated -90 0 run function mechanization:assembly/machines/stone_cutter/check_recipes
execute if score @s[nbt={ItemRotation:0b}] mechanization.stored_energy matches 144.. if data block ~ ~ ~ Items[0] rotated 0 0 run function mechanization:assembly/machines/stone_cutter/check_recipes
execute if score @s[nbt={ItemRotation:6b}] mechanization.stored_energy matches 144.. if data block ~ ~ ~ Items[0] rotated 90 0 run function mechanization:assembly/machines/stone_cutter/check_recipes

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t2
