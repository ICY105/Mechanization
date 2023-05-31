
#add power
execute if score @s energy.storage < @s energy.transfer_rate run scoreboard players operation #energy.available energy.data += @s energy.storage
execute if score @s energy.storage >= @s energy.transfer_rate run scoreboard players operation #energy.available energy.data += @s energy.transfer_rate
