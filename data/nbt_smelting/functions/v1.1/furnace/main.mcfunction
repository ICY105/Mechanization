
execute unless block ~ ~ ~ #nbt_smelting:furnaces run kill @s
execute if entity @s[tag=!nbt_smelting.furnace.active] if data block ~ ~ ~ Items[{Slot:0b}].tag.nbt_smelting run function nbt_smelting:v1.1/furnace/start_smelt
