
# check if not fluid item
$execute if items block ~ ~ ~ container.$(slot) #mechanization:fluid_item run return fail
$execute if items block ~ ~ ~ container.$(slot) *[minecraft:custom_data~{fluid:{}}] run return fail

# get open slot
scoreboard players set #slot mechanization.data -1
execute unless items block ~ ~ ~ container.10 * run scoreboard players set #slot mechanization.data 10

execute if score #slot mechanization.data matches -1 run return fail

# move item
$execute if score #slot mechanization.data matches 10 run item replace block ~ ~ ~ container.10 from block ~ ~ ~ container.$(slot)

$item replace block ~ ~ ~ container.$(slot) with minecraft:air