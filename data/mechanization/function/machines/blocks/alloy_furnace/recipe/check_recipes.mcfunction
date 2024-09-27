
execute if function mechanization:machines/blocks/alloy_furnace/recipe/check_recipes_2 run return 1

data remove storage mechanization:temp list[-1]
execute if data storage mechanization:temp list[0] run return run function mechanization:machines/blocks/alloy_furnace/recipe/check_recipes
return fail
