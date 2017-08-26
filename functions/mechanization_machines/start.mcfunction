scoreboard objectives add dayTime dummy
scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy

scoreboard players set loaderID quantumFrequency 0
scoreboard players set temp quantumFrequency 0
scoreboard players set @e[tag=mech_timer,c=1] dayTime 0
execute @e[tag=mech_timer,c=1] ~ ~ ~ stats entity @s set QueryResult @s dayTime

tellraw @a ["",{"text":"Thank you for installing Mechanizaion: Age of Machines by ImCoolYeah105.","color":"dark_red"},{"text":"\nCommand has been activated.","color":"blue"}]