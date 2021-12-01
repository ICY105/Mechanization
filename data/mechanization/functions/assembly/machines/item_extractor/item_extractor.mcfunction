
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_uuid matches -2147483648.. align xyz positioned ~0.5 ~0.1 ~0.5 run scoreboard players operation @s du_uuid = @e[tag=mech_item_pipe,sort=nearest,limit=1] du_uuid

#main
execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:assembly/machines/item_extractor/break

execute if score @s mechanization.stored_energy matches 24.. run function du:world/blocks/is_active
execute if score $world.out_0 du_data matches 0 if score @s mechanization.stored_energy matches 24.. positioned ^ ^ ^-0.5 align xyz positioned ~0.5 ~0.9 ~0.5 if block ~ ~ ~ #mechanization:inv run function mechanization:assembly/machines/item_extractor/move_item

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
