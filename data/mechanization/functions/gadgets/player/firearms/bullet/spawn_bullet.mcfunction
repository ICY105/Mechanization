
summon minecraft:marker ~ ~ ~ {Tags:["mechanization", "mechanization.ticking", "mechanization.bullet", "mechanization.new", "smithed.ignore"]}
execute as @e[type=minecraft:marker,tag=mechanization.new] run function mechanization:gadgets/player/firearms/bullet/spawn_bullet_2

