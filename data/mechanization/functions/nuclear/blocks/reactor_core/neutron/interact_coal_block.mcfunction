
data modify storage mechanization:temp io.get_data_entry set value {material: "C", reaction: "fast_scattering", temperature: 2}
data modify storage mechanization:temp io.get_neutron_interaction set value {quantity:0}

# process fast_scattering
data modify storage mechanization:temp io.get_data_entry.reaction set value "fast_scattering"
execute store result storage mechanization:temp io.get_neutron_interaction.quantity int 1 run scoreboard players get #quantity_fast mechanization.data

execute store result score #quantity mechanization.data run function mechanization:nuclear/math/m.get_neutron_interaction with storage mechanization:temp io.get_neutron_interaction
scoreboard players operation #quantity_fast mechanization.data -= #quantity mechanization.data
scoreboard players operation #quantity_thermal mechanization.data += #quantity mechanization.data
execute if score #quantity mechanization.data matches 1.. run tellraw @p[tag=mechanization.debug] [{"text":"  Scatter (CB): "},{"score":{"name":"#quantity","objective":"mechanization.data"}},{"translate":", (%s:%s)","with":[{"score":{"name":"#quantity_fast","objective":"mechanization.data"}},{"score":{"name":"#quantity_thermal","objective":"mechanization.data"}}]}]

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
