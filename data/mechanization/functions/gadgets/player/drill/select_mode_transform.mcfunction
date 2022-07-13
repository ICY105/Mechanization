
# get needed state
scoreboard players set #block_type mechanization.data 0
execute if block ~ ~ ~ #mechanization:drill/hoe run scoreboard players set #block_type mechanization.data 1
execute if block ~ ~ ~ #mechanization:drill/shovel run scoreboard players set #block_type mechanization.data 2
execute if block ~ ~ ~ #mechanization:drill/axe run scoreboard players set #block_type mechanization.data 3
execute if block ~ ~ ~ #mechanization:drill/pickaxe run scoreboard players set #block_type mechanization.data 4
execute if block ~ ~ ~ #mechanization:drill/none run scoreboard players set #block_type mechanization.data 0

# change state
execute unless score #tool mechanization.data = #block_type mechanization.data run item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
execute unless score #tool mechanization.data = #block_type mechanization.data if score #block_type mechanization.data matches 0 run data modify block -30000000 0 3201 Items[0].id set value "minecraft:carrot_on_a_stick"
execute unless score #tool mechanization.data = #block_type mechanization.data if score #block_type mechanization.data matches 1 run data modify block -30000000 0 3201 Items[0].id set value "minecraft:netherite_hoe"
execute unless score #tool mechanization.data = #block_type mechanization.data if score #block_type mechanization.data matches 2 run data modify block -30000000 0 3201 Items[0].id set value "minecraft:netherite_shovel"
execute unless score #tool mechanization.data = #block_type mechanization.data if score #block_type mechanization.data matches 3 run data modify block -30000000 0 3201 Items[0].id set value "minecraft:netherite_axe"
execute unless score #tool mechanization.data = #block_type mechanization.data if score #block_type mechanization.data matches 4 run data modify block -30000000 0 3201 Items[0].id set value "minecraft:netherite_pickaxe"
execute unless score #tool mechanization.data = #block_type mechanization.data run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0

# end loop
scoreboard players set #loop mechanization.data -1
