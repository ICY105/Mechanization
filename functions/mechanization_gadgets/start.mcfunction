scoreboard objectives add reloadTime dummy
scoreboard objectives add weaponType dummy
scoreboard objectives add bulletType dummy
scoreboard objectives add item dummy
scoreboard objectives add playerID dummy
scoreboard objectives add stick stat.useItem.minecraft.carrot_on_a_stick
scoreboard objectives add throwPearl stat.useItem.minecraft.ender_pearl

scoreboard players set incrID playerID 1

tellraw @a ["",{"text":"Thank you for installing Mechanization: Gadgets by ImCoolYeah105.","color":"dark_red"},{"text":"\nCommand has been activated.","color":"blue"}]