
data modify storage mechanization:temp list set value [ \
    {name:[{"translate":"text.mechanization.machine_observer.temperature"}], item_model:"mechanization:nuclear/gui/temperature_icon", min_quantity:0, max_quantity:1000, quantity:0}, \
    {name:[{"translate":"text.mechanization.machine_observer.neutron_flux"}], item_model:"mechanization:nuclear/gui/neutron_flux_icon", min_quantity:0, max_quantity:5000, quantity:0} \
]

execute store result storage mechanization:temp list[0].quantity int 1 run scoreboard players get @s mechanization.data
execute store result storage mechanization:temp list[1].quantity int 1 run scoreboard players get @s mechanization.fluid.in
