
#init transfer capacity
execute unless score @s energy.transfer_capacity matches 0.. run scoreboard players operation @s energy.transfer_capacity = @s energy.transfer_rate

#add power
execute if score @s energy.storage < @s energy.transfer_capacity run scoreboard players operation #energy.available energy.data += @s energy.storage
execute if score @s energy.storage >= @s energy.transfer_capacity run scoreboard players operation #energy.available energy.data += @s energy.transfer_capacity
