testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:coal_ore"}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTime:199s}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_coal
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:iron_ore"}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTime:199s}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_iron
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:gold_ore"}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTime:199s}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_gold
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:diamond_ore"}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTime:199s}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_diamond
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:emerald_ore"}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTime:199s}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_emerald
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:quartz_ore"}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {CookTime:199s}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_quartz

testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:skull",tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000002"},display:{Name:"§aCopper Ore"}},Damage:3s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_copper
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_copper
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:skull",tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000004"},display:{Name:"§fTin Ore"}},Damage:3s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_tin
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_tin
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:skull",tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000006"},display:{Name:"§2Uranium Ore"}},Damage:3s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_uranium
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_uranium
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:skull",tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000008"},display:{Name:"§dTitanium Ore"}},Damage:3s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_titanium
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_titanium

testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:log",Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_oak
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_oak
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:log",Damage:1s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_spruce
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_spruce
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:log",Damage:2s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_birch
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_birch
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:log",Damage:3s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_jungle
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_jungle
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:log2",Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_acadia
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_acadia
testforblock ~ ~ ~ minecraft:lit_furnace -1 {Items:[{Slot:0b,id:"minecraft:log2",Damage:1s}]}
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/incr_dark
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/grinder/decr_dark


scoreboard players tag @s remove recipeValid
scoreboard players set @s timer 0