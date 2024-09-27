
scoreboard players set #input.0 mechanization.data -1
scoreboard players set #input.1 mechanization.data -1
scoreboard players set #input.2 mechanization.data -1
scoreboard players set #input.3 mechanization.data -1
scoreboard players set #input.4 mechanization.data -1

execute unless data storage mechanization:temp list[-1].output{type:"fluid"}.id run return fail
execute store result score #success mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_fluid_output with storage mechanization:temp list[-1].output
execute if score #success mechanization.data matches 0 run return fail

execute unless data storage mechanization:temp list[-1].input[0] run return 1
scoreboard players set #input.0 mechanization.data 0
execute if score #input.0 mechanization.data matches 0 run data modify storage mechanization:temp obj.temp set from storage mechanization:temp list[-1].input[0]
execute if score #input.0 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"item"} store result score #input.0 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_item_ingrediant with storage mechanization:temp obj.temp
execute if score #input.0 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"dict"} store result score #input.0 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_dict_ingrediant with storage mechanization:temp obj.temp
execute if score #input.0 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"fluid"} store result score #input.0 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_fluid_ingrediant with storage mechanization:temp obj.temp
execute if score #input.0 mechanization.data matches 0 run return fail

data modify storage mechanization:test obj set from storage mechanization:temp list[-1].input[1]
execute unless data storage mechanization:temp list[-1].input[1] run return 1
scoreboard players set #input.1 mechanization.data 0
execute if score #input.1 mechanization.data matches 0 run data modify storage mechanization:temp obj.temp set from storage mechanization:temp list[-1].input[1]
execute if score #input.1 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"item"} store result score #input.1 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_item_ingrediant with storage mechanization:temp obj.temp
execute if score #input.1 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"dict"} store result score #input.1 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_dict_ingrediant with storage mechanization:temp obj.temp
execute if score #input.1 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"fluid"} store result score #input.1 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_fluid_ingrediant with storage mechanization:temp obj.temp
execute if score #input.1 mechanization.data matches 0 run return fail

execute unless data storage mechanization:temp list[-1].input[2] run return 1
scoreboard players set #input.2 mechanization.data 0
execute if score #input.2 mechanization.data matches 0 run data modify storage mechanization:temp obj.temp set from storage mechanization:temp list[-1].input[2]
execute if score #input.2 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"item"} store result score #input.2 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_item_ingrediant with storage mechanization:temp obj.temp
execute if score #input.2 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"dict"} store result score #input.2 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_dict_ingrediant with storage mechanization:temp obj.temp
execute if score #input.2 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"fluid"} store result score #input.2 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_fluid_ingrediant with storage mechanization:temp obj.temp
execute if score #input.2 mechanization.data matches 0 run return fail

execute unless data storage mechanization:temp list[-1].input[3] run return 1
scoreboard players set #input.3 mechanization.data 0
execute if score #input.3 mechanization.data matches 0 run data modify storage mechanization:temp obj.temp set from storage mechanization:temp list[-1].input[3]
execute if score #input.3 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"item"} store result score #input.3 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_item_ingrediant with storage mechanization:temp obj.temp
execute if score #input.3 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"dict"} store result score #input.3 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_dict_ingrediant with storage mechanization:temp obj.temp
execute if score #input.3 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"fluid"} store result score #input.3 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_fluid_ingrediant with storage mechanization:temp obj.temp
execute if score #input.3 mechanization.data matches 0 run return fail

execute unless data storage mechanization:temp list[-1].input[4] run return 1
scoreboard players set #input.4 mechanization.data 0
execute if score #input.4 mechanization.data matches 0 run data modify storage mechanization:temp obj.temp set from storage mechanization:temp list[-1].input[4]
execute if score #input.4 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"item"} store result score #input.4 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_item_ingrediant with storage mechanization:temp obj.temp
execute if score #input.4 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"dict"} store result score #input.4 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_dict_ingrediant with storage mechanization:temp obj.temp
execute if score #input.4 mechanization.data matches 0 if data storage mechanization:temp obj.temp{type:"fluid"} store result score #input.4 mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/m.check_fluid_ingrediant with storage mechanization:temp obj.temp
execute if score #input.4 mechanization.data matches 0 run return fail

return 1
