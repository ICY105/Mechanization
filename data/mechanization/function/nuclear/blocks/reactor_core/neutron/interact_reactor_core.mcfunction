
# exit if not running
execute unless entity @s[tag=mechanization.reactor_core.uranium] unless entity @s[tag=mechanization.reactor_core.mox] run return fail

# get from lookup table
data modify storage mechanization:temp io.get_data_entry set value {material: "U-238", temperature: 2}

execute if score @s[tag=!mechanization.reactor_core.mox] mechanization.time matches 100.. run data modify storage mechanization:temp io.get_data_entry.material set value "U-235"
execute if score @s[tag=!mechanization.reactor_core.mox] mechanization.time matches 1..99 store result storage mechanization:temp io.set_reactor_material.enrichment int 1 run scoreboard players get @s mechanization.time
execute if score @s[tag=!mechanization.reactor_core.mox] mechanization.time matches 1..9 run function mechanization:nuclear/blocks/reactor_core/neutron/m.set_reactor_material with storage mechanization:temp io.set_reactor_material
execute if score @s[tag=!mechanization.reactor_core.mox] mechanization.time matches 10..99 run function mechanization:nuclear/blocks/reactor_core/neutron/m.set_reactor_material_2 with storage mechanization:temp io.set_reactor_material

execute if entity @s[tag=mechanization.reactor_core.mox] run data modify storage mechanization:temp io.get_data_entry.material set value "MOX"

# run loop
scoreboard players operation #loop mechanization.data = #distance mechanization.data
execute if score #loop mechanization.data matches 1.. run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reactor_core_2
