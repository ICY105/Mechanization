execute unless block ~ ~ ~ furnace run kill @s[tag=du_fur_basic]
execute unless block ~ ~ ~ furnace{Items:[{Slot:2b}]} run scoreboard players set @s du_move_y 0

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[0].tag.du_smelt_id
execute unless score temp_0 du_data matches 0 if entity @s[tag=!du_fur_active] run function du:custom_furnace/start_smelt
