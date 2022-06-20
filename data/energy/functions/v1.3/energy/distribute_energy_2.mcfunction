
#init transfer capacity
execute unless score @s energy.transfer_capacity matches 0.. run scoreboard players operation @s energy.transfer_capacity = @s energy.transfer_rate

#find available capacity
scoreboard players operation #energy.max_storage energy.data = @s energy.max_storage
scoreboard players operation #energy.max_storage energy.data -= @s energy.storage

#find power to add
scoreboard players operation #energy.temp energy.data = #energy.available energy.data
execute if score #energy.temp energy.data > #energy.max_storage energy.data run scoreboard players operation #energy.temp energy.data = #energy.max_storage energy.data
execute if score #energy.temp energy.data > @s energy.transfer_capacity run scoreboard players operation #energy.temp energy.data = @s energy.transfer_capacity
execute if score #energy.temp energy.data matches ..-1 run scoreboard players set #energy.temp energy.data 0

#set scores
scoreboard players operation #energy.available energy.data -= #energy.temp energy.data
scoreboard players operation #energy.spent energy.data += #energy.temp energy.data
scoreboard players operation @s energy.storage += #energy.temp energy.data

#call energy changed function
function #energy:v1/energy_update
