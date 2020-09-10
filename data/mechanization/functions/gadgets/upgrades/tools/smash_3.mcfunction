
execute positioned ~-1 ~01 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~01 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~01 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~01 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~01 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~01 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~01 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~01 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~01 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

execute positioned ~-1 ~00 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~00 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~00 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~00 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~00 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~00 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~00 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~00 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~00 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~-1 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~-1 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~-1 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~-1 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~00 ~-1 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~-1 ~-1 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~-1 ~00 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~01 ~-1 ~01 if block ~ ~ ~ #mechanization:smash_upgrade run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

execute store result score temp_0 mech_data run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #mechanization:smash_upgrade
function du:player/inv/get_equipment
execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[0].tag.Damage
scoreboard players operation temp_1 mech_data += temp_0 mech_data
execute store result block -29999999 0 1601 Items[0].tag.Damage int 1 run scoreboard players get temp_1 mech_data
function du:player/inv/restore_equipment

