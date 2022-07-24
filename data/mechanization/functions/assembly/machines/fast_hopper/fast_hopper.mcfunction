
execute if block ~ ~ ~ minecraft:hopper[enabled=true] if data block ~ ~ ~ Items[0] run data merge block ~ ~ ~ {TransferCooldown:1}
execute unless block ~ ~ ~ minecraft:hopper run kill @s
