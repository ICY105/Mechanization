
scoreboard players operation #damage mechanization.data /= #cons.10 mechanization.data
scoreboard players operation @s smithed.damage = #damage mechanization.data
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function #smithed.damage:entity/apply/armor
