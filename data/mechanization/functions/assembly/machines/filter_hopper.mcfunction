execute unless block ~ ~ ~ hopper{Items:[{Slot:0b}]} run data merge block ~ ~ ~ {TransferCooldown:4}
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,Count:1b}]} run data merge block ~ ~ ~ {TransferCooldown:4}

execute unless block ~ ~ ~ hopper run kill @s
