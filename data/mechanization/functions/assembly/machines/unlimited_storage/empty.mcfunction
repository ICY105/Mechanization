execute store success entity @s ArmorItems[3].tag.mech_storage int 0 if entity @s
execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:20}
data merge block ~ ~ ~ {TransferCooldown:20}
