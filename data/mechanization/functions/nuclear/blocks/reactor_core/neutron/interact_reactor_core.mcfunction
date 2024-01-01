
data modify storage mechanization:temp io.get_data_entry set value {material: "U-238", reaction: "fast_scattering", temperature: 2}
data modify storage mechanization:temp io.get_neutron_interaction set value {quantity:0}

execute if score @s mechanization.data matches ..2019 store result storage mechanization:temp io.get_data_entry.temperature int 0.1 run scoreboard players get @s mechanization.data
execute if score @s mechanization.data matches 2020.. run data modify storage mechanization:temp io.get_data_entry.temperature set value 219

execute if score @s mechanization.time matches 100.. run data modify storage mechanization:temp io.get_data_entry.material set value "U-235"
execute if score @s mechanization.time matches 1..99 store result storage mechanization:temp io.set_reactor_material.enrichment int 1 run scoreboard players get @s mechanization.time
execute if score @s mechanization.time matches 1..9 run function mechanization:nuclear/blocks/reactor_core/neutron/m.set_reactor_material with storage mechanization:temp io.set_reactor_material
execute if score @s mechanization.time matches 10..99 run function mechanization:nuclear/blocks/reactor_core/neutron/m.set_reactor_material_2 with storage mechanization:temp io.set_reactor_material

# process fast_fission
data modify storage mechanization:temp io.get_data_entry.reaction set value "fast_fission"
execute store result storage mechanization:temp io.get_neutron_interaction.quantity int 1 run scoreboard players get #quantity_fast mechanization.data

execute store result score #quantity mechanization.data run function mechanization:nuclear/math/m.get_neutron_interaction with storage mechanization:temp io.get_neutron_interaction
scoreboard players operation #quantity_fast mechanization.data -= #quantity mechanization.data

    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.fission[0]
    scoreboard players operation #temp mechanization.data += #quantity mechanization.data
    execute store result storage mechanization:temp obj.fission[0] int 1 run scoreboard players get #temp mechanization.data

scoreboard players operation @s mechanization.data += #quantity mechanization.data
scoreboard players operation #quantity mechanization.data *= #cons.3 mechanization.data
scoreboard players operation @s mechanization.fluid.in += #quantity mechanization.data

# process thermal_fission
data modify storage mechanization:temp io.get_data_entry.reaction set value "thermal_fission"
execute store result storage mechanization:temp io.get_neutron_interaction.quantity int 1 run scoreboard players get #quantity_thermal mechanization.data

execute store result score #quantity mechanization.data run function mechanization:nuclear/math/m.get_neutron_interaction with storage mechanization:temp io.get_neutron_interaction
scoreboard players operation #quantity_thermal mechanization.data -= #quantity mechanization.data

    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.fission[1]
    scoreboard players operation #temp mechanization.data += #quantity mechanization.data
    execute store result storage mechanization:temp obj.fission[1] int 1 run scoreboard players get #temp mechanization.data

scoreboard players operation @s mechanization.data += #quantity mechanization.data
scoreboard players operation #quantity mechanization.data *= #cons.3 mechanization.data
scoreboard players operation @s mechanization.fluid.in += #quantity mechanization.data

# process fast_scattering
data modify storage mechanization:temp io.get_data_entry.reaction set value "fast_scattering"
execute store result storage mechanization:temp io.get_neutron_interaction.quantity int 1 run scoreboard players get #quantity_fast mechanization.data

execute store result score #quantity mechanization.data run function mechanization:nuclear/math/m.get_neutron_interaction with storage mechanization:temp io.get_neutron_interaction
scoreboard players operation #quantity_fast mechanization.data -= #quantity mechanization.data
scoreboard players operation #quantity_thermal mechanization.data += #quantity mechanization.data

    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.scatter
    scoreboard players operation #temp mechanization.data += #quantity mechanization.data
    execute store result storage mechanization:temp obj.scatter int 1 run scoreboard players get #temp mechanization.data

# process fast_capture
data modify storage mechanization:temp io.get_data_entry.reaction set value "fast_capture"
execute store result storage mechanization:temp io.get_neutron_interaction.quantity int 1 run scoreboard players get #quantity_fast mechanization.data

execute store result score #quantity mechanization.data run function mechanization:nuclear/math/m.get_neutron_interaction with storage mechanization:temp io.get_neutron_interaction
scoreboard players operation #quantity_fast mechanization.data -= #quantity mechanization.data

    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.capture[0]
    scoreboard players operation #temp mechanization.data += #quantity mechanization.data
    execute store result storage mechanization:temp obj.capture[0] int 1 run scoreboard players get #temp mechanization.data

# process thermal_capture
data modify storage mechanization:temp io.get_data_entry.reaction set value "thermal_capture"
execute store result storage mechanization:temp io.get_neutron_interaction.quantity int 1 run scoreboard players get #quantity_thermal mechanization.data

execute store result score #quantity mechanization.data run function mechanization:nuclear/math/m.get_neutron_interaction with storage mechanization:temp io.get_neutron_interaction
scoreboard players operation #quantity_thermal mechanization.data -= #quantity mechanization.data

    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.capture[1]
    scoreboard players operation #temp mechanization.data += #quantity mechanization.data
    execute store result storage mechanization:temp obj.capture[1] int 1 run scoreboard players get #temp mechanization.data
