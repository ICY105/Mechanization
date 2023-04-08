#
# Checks if the id of storage fluid:io fluid.id = storage fluid:io id
# > storage fluid:io fluid: fluid 1 with id
# > storage fluid:io id: id of fluid 2
# < #utils.out fluid.data: 1 if same, 0 it not
#

scoreboard players set #utils.out fluid.data 0
execute store success score #success fluid.data run data modify storage fluid:io id set from storage fluid:io fluid.id
scoreboard players remove #success fluid.data 1
scoreboard players operation #success fluid.data *= #cons.-1 fluid.data
scoreboard players operation #utils.out fluid.data = #success fluid.data
