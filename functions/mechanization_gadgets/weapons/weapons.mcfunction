#manages weapon selection
scoreboard players set @s weaponType 1 {SelectedItem:{Damage:1s}}
scoreboard players set @s weaponType 2 {SelectedItem:{Damage:2s}}
scoreboard players set @s weaponType 3 {SelectedItem:{Damage:3s}}
scoreboard players set @s weaponType 4 {SelectedItem:{Damage:4s}}
scoreboard players set @s weaponType 5 {SelectedItem:{Damage:5s}}
scoreboard players set @s weaponType 6 {SelectedItem:{Damage:6s}}
scoreboard players set @s weaponType 7 {SelectedItem:{Damage:7s}}
scoreboard players set @s weaponType 8 {SelectedItem:{Damage:8s}}
scoreboard players set @s weaponType 9 {SelectedItem:{Damage:9s}}

scoreboard players set @s bulletType 0
scoreboard players set @s bulletType 1 {SelectedItem:{tag:{display:{Lore:["§7Weakening Bullets"]}}}}
scoreboard players set @s bulletType 2 {SelectedItem:{tag:{display:{Lore:["§7Ice Bullets"]}}}}
scoreboard players set @s bulletType 3 {SelectedItem:{tag:{display:{Lore:["§7Poison Bullets"]}}}}
scoreboard players set @s bulletType 4 {SelectedItem:{tag:{display:{Lore:["§7Hungry Bullets"]}}}}
scoreboard players set @s bulletType 5 {SelectedItem:{tag:{display:{Lore:["§7Armor Penetrating Bullets"]}}}}
scoreboard players set @s bulletType 6 {SelectedItem:{tag:{display:{Lore:["§7Levitating Bullets"]}}}}

execute @s[score_weaponType_min=1,score_weaponType=1] ~ ~ ~ function mechanization_gadgets:weapons/rifle
execute @s[score_weaponType_min=2,score_weaponType=2] ~ ~ ~ function mechanization_gadgets:weapons/laserdrill
execute @s[score_weaponType_min=3,score_weaponType=3] ~ ~ ~ function mechanization_gadgets:weapons/flame_thrower
execute @s[score_weaponType_min=4,score_weaponType=4] ~ ~ ~ function mechanization_gadgets:weapons/sniper
execute @s[score_weaponType_min=5,score_weaponType=5] ~ ~ ~ function mechanization_gadgets:weapons/pistol
execute @s[score_weaponType_min=6,score_weaponType=6] ~ ~ ~ function mechanization_gadgets:weapons/rocket_launcher
execute @s[score_weaponType_min=7,score_weaponType=7] ~ ~ ~ function mechanization_gadgets:weapons/laser_rifle
execute @s[score_weaponType_min=8,score_weaponType=8] ~ ~ ~ function mechanization_gadgets:weapons/railgun
execute @s[score_weaponType_min=9,score_weaponType=9] ~ ~ ~ function mechanization_gadgets:weapons/smg