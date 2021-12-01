
execute if score $base.cf.backup mechanization.data matches 1 unless score @s du_uuid matches -2147483648.. store result score @s du_uuid run data get entity @s Item.tag.du_uuid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.du_uuid int 1 run scoreboard players get @s du_uuid

execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:machines/machines/item_pipe/break
