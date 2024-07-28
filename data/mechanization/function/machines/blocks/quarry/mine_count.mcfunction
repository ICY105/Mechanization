
function mechanization:machines/blocks/quarry/mine

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. run function mechanization:machines/blocks/quarry/mine_count
