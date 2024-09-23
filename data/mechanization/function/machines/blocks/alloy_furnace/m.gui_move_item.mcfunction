
# check if not fluid item
$execute if items block ~ ~ ~ container.$(slot) #mechanization:fluid_item run return fail
$execute if items block ~ ~ ~ container.$(slot) *[minecraft:custom_data~{fluid:{}}] run return fail

# get open slot
scoreboard players set #slot mechanization.data -1
execute unless items block ~ ~ ~ container.18 * run scoreboard players set #slot mechanization.data 18
execute unless items block ~ ~ ~ container.9 * run scoreboard players set #slot mechanization.data 9
execute unless items block ~ ~ ~ container.0 * run scoreboard players set #slot mechanization.data 0

execute if score #slot mechanization.data matches -1 run return fail

# move item
$execute if score #slot mechanization.data matches 0 run item replace block ~ ~ ~ container.0 from block ~ ~ ~ container.$(slot)
$execute if score #slot mechanization.data matches 9 run item replace block ~ ~ ~ container.9 from block ~ ~ ~ container.$(slot)
$execute if score #slot mechanization.data matches 18 run item replace block ~ ~ ~ container.18 from block ~ ~ ~ container.$(slot)

$item replace block ~ ~ ~ container.$(slot) with minecraft:air