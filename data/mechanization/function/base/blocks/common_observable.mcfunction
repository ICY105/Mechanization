
execute if score @s fluid.max_storage.3 matches 1.. run data modify storage mechanization:temp list prepend value {name:'[{"translate":"text.mechanization.machine_observer.fluid_storage", "with":[{"text":"4"}]}]', item_model:"mechanization:machines/gui/fluid_tank_icon", count:4, min_quantity:0, max_quantity:0, quantity:0}
execute if score @s fluid.max_storage.3 matches 1.. store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s fluid.storage.3
execute if score @s fluid.max_storage.3 matches 1.. store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s fluid.max_storage.3

execute if score @s fluid.max_storage.2 matches 1.. run data modify storage mechanization:temp list prepend value {name:'[{"translate":"text.mechanization.machine_observer.fluid_storage", "with":[{"text":"3"}]}]', item_model:"mechanization:machines/gui/fluid_tank_icon", count:3, min_quantity:0, max_quantity:0, quantity:0}
execute if score @s fluid.max_storage.2 matches 1.. store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s fluid.storage.2
execute if score @s fluid.max_storage.2 matches 1.. store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s fluid.max_storage.2

execute if score @s fluid.max_storage.1 matches 1.. run data modify storage mechanization:temp list prepend value {name:'[{"translate":"text.mechanization.machine_observer.fluid_storage", "with":[{"text":"2"}]}]', item_model:"mechanization:machines/gui/fluid_tank_icon", count:2, min_quantity:0, max_quantity:0, quantity:0}
execute if score @s fluid.max_storage.1 matches 1.. store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s fluid.storage.1
execute if score @s fluid.max_storage.1 matches 1.. store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s fluid.max_storage.1

execute if score @s fluid.max_storage.0 matches 1.. run data modify storage mechanization:temp list prepend value {name:'[{"translate":"text.mechanization.machine_observer.fluid_storage", "with":[{"text":"1"}]}]', item_model:"mechanization:machines/gui/fluid_tank_icon", min_quantity:0, max_quantity:0, quantity:0}
execute if score @s fluid.max_storage.0 matches 1.. store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s fluid.storage.0
execute if score @s fluid.max_storage.0 matches 1.. store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s fluid.max_storage.0

execute if score @s energy.max_storage matches 0.. run data modify storage mechanization:temp list prepend value {name:'[{"translate":"text.mechanization.machine_observer.energy_rate"}]', item_model:"mechanization:base/item/multimeter", min_quantity:0, max_quantity:0, quantity:0}
execute if score @s energy.max_storage matches 0.. store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s energy.change_rate
execute if score @s energy.max_storage matches 0.. store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s energy.max_storage

execute if score @s energy.max_storage matches 0.. run data modify storage mechanization:temp list prepend value {name:'[{"translate":"text.mechanization.machine_observer.energy_storage"}]', item_model:"mechanization:machines/block/tier1_battery", min_quantity:0, max_quantity:0, quantity:0}
execute if score @s energy.max_storage matches 0.. store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s energy.storage
execute if score @s energy.max_storage matches 0.. store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s energy.max_storage

