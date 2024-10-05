
# check block
execute unless block ^ ^ ^ #minecraft:logs run scoreboard players set #active mechanization.data 0

# break wood
scoreboard players set #loop mechanization.data 64
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #loop mechanization.data 256

scoreboard players set #radius mechanization.data 6
execute if score #active mechanization.data matches 1 run function mechanization:machines/blocks/tree_feller/tree_feller_break_wood 
execute if score #active mechanization.data matches 1 run tp @e[type=minecraft:item,distance=..64,nbt={Age:0s}] ^ ^-0.5 ^-2

# power & effects
execute if score #active mechanization.data matches 1 run scoreboard players remove @s energy.storage 160
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.tree_feller block @a[distance=..16] ~ ~ ~

# replant
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.active] if block ~ ~ ~ #mechanization:air as @e[type=item,sort=nearest,distance=..12] if block ~ ~ ~ #mechanization:air run function mechanization:machines/blocks/tree_feller/replant
