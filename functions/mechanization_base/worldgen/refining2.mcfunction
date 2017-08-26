testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000001"}}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:air
execute @s[score_checks_min=1] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§6Copper Ingot",CustomNameVisible:1,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;12414020]},display:{Name:"§6Copper Ingot"}}}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000003"}}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:air
execute @s[score_checks_min=1] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§7Tin Ingot",CustomNameVisible:1,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Colors:[I;16777215]},display:{Name:"§7Tin Ingot"}}}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000005"}}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:air
execute @s[score_checks_min=1] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§aUranium Ingot",CustomNameVisible:1,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Colors:[I;8978176]},display:{Name:"§aUranium Ingot"}}}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000007"}}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:air
execute @s[score_checks_min=1] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§dTitanium Ingot",CustomNameVisible:1,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Colors:[I;13216198]},display:{Name:"§dTitanium Ingot"}}}}
