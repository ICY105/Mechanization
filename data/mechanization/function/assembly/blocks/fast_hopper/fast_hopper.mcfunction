
execute store result score #cooldown mechanization.data run data get block ~ ~ ~ TransferCooldown
execute if score #cooldown mechanization.data matches 2..9 if block ~ ~ ~ minecraft:hopper[enabled=true] if data block ~ ~ ~ Items[0] run data merge block ~ ~ ~ {TransferCooldown:1}

execute unless block ~ ~ ~ minecraft:hopper run playsound minecraft:block.glass.break block @a[distance=..8]
execute unless block ~ ~ ~ minecraft:hopper run kill @s
