
tag @s remove mech_not_checked
data modify storage mechanization:networks quantum prepend value {id:0,energy:0}
execute store result storage mechanization:networks quantum[0].id int 1 run scoreboard players get @s mech_gridid
execute store result storage mechanization:networks quantum[0].energy int 1 run scoreboard players get @s mech_energy
