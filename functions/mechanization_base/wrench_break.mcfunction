execute @e[type=armor_stand,score_powerStorage_min=0,r=1,c=1] ~ ~ ~ setblock ~ ~ ~ minecraft:air

execute @e[type=armor_stand,score_powerStorage_min=0,r=1,c=1] ~ ~ ~ execute @s[tag=storage1] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§1Tier 1 Battery",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{display:{Name:"§1Tier 1 Battery",Lore:["§f  Stores: 100000 kJ","§f  Transfer Rate: 100 kJ/s","§f  Transfer Range: 24 blocks"]},SkullOwner:{Id:"4487933f-9eb6-4b25-a060-a2428e247b47",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGM5MzY1NjQyYzZlZGRjZmVkZjViNWUxNGUyYmM3MTI1N2Q5ZTRhMzM2M2QxMjNjNmYzM2M1NWNhZmJmNmQifX19"}]}}},Damage:3s}}

execute @e[type=armor_stand,score_powerStorage_min=0,r=1,c=1] ~ ~ ~ execute @s[tag=storage2] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§4Tier 2 Battery",CustomNameVisible:1,Item:{Slot:4b,id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"6cbf42e6-d4c2-46f1-aa25-952fd4858a66",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmZjJlYjQ5OGU1YzZhMDQ0ODRmMGM5Zjc4NWI0NDg0NzlhYjIxM2RmOTVlYzkxMTc2YTMwOGExMmFkZDcwIn19fQ=="}]}},display:{Name:"§4Tier 2 Battery",Lore:["§f  Stores: 350000 kJ","§f  Transfer Rate: 400 kJ/s","§f  Transfer Range: 32 blocks"]}},Damage:3s}}

execute @e[type=armor_stand,score_powerStorage_min=0,r=1,c=1] ~ ~ ~ execute @s[tag=storage3] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§5Tier 3 Battery",CustomNameVisible:1,Item:{Slot:4b,id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"2cf928cb-6162-49e0-987b-fd95e0102ed2",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYzYmNhZjZkMjY3OWQ4ZDdkOWJmNmE0NzRhNDhhNzdhOGU5MTc0N2ExMDg0YzA5MjU2ZWJjODZjYjc0ODExIn19fQ=="}]}},display:{Name:"§5Tier 3 Battery",Lore:["§f  Stores: 1000000 kJ","§f  Transfer Rate: 1000 kJ/s","§f  Transfer Range: 48 blocks"]}},Damage:3s}}

execute @e[type=armor_stand,score_powerStorage_min=0,r=1,c=1] ~ ~ ~ execute @s[tag=storageQuantum] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§dQuantum Battery",CustomNameVisible:1,Item:{Slot:4b,id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"fa01b0c9-675b-43fd-93b4-f67032fbd2af",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU5NTI5M2FjYmNkNGY1NWZhZjU5NDdiZmM1MTM1MDM4YjI3NWE3YWI4MTA4NzM0MWI5ZWM2ZTQ1M2U4MzkifX19"}]}},display:{Name:"§dQuantum Battery",Lore:["§f Wirelessly shares power with other quantum batteries","§f over any range. Use wrench to change frequency.","§f  Stores: 500000 kJ","§f  Transfer Rate: 1000 kJ/s","§f  Transfer Range: 32 blocks"]}},Damage:3s}}


execute @e[tag=crafttable,c=1,r=2] ~ ~ ~ setblock ~ ~-1 ~ minecraft:anvil 1
kill @e[tag=crafttable,c=1,r=2]

summon item ~ ~1 ~ {Item:{id:spawn_egg,Damage:60,Count:1,tag:{display:{Name:"§8Machine Wrench",Lore:["§fSafely retrives machines without destroying them.","§fSome machines must be wrenched to remove them."]},EntityTag:{id:"Silverfish",Tags:["toWrench"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:200,ShowParticles:0b}]}}}}

kill @s