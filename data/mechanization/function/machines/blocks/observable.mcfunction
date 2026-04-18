
execute if entity @s[tag=mechanization.battery.t1] run data modify storage mechanization:temp list set value [ \
    {name:"[{\"text\":\"Energy\"}]", item_model:"mechanization:machines/block/tier1_battery", min_quantity:0, max_quantity:0, quantity:0} \
]

execute if entity @s[tag=mechanization.battery.t1] store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s energy.storage
execute if entity @s[tag=mechanization.battery.t1] store result storage mechanization:temp list[0].max_quantity int 1 run scoreboard players get @s energy.max_storage
