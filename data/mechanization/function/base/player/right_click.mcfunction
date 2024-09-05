
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"gps"}}] run function mechanization:base/player/gps/use
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"wrench"}}] run function mechanization:base/player/wrench/use
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"multimeter"}}] run function mechanization:base/player/multimeter/use
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"pipe_wrench"}}] run function mechanization:base/player/pipe_wrench/modify_state
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"machine_upgrade"}}] run function mechanization:base/player/upgrades/use
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"nether_upgrade"}}] run function mechanization:base/player/upgrades/use
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"ender_upgrade"}}] run function mechanization:base/player/upgrades/use
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"muffler_upgrade"}}] run function mechanization:base/player/upgrades/use
