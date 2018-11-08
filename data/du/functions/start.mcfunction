gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000

#scoreboard objectives
scoreboard objectives add du_uuid dummy
scoreboard objectives add du_data dummy

scoreboard objectives add du_move_x dummy
scoreboard objectives add du_move_y dummy
scoreboard objectives add du_move_z dummy
scoreboard objectives add du_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add du_jump minecraft.custom:minecraft.jump

scoreboard objectives add du_talked minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add du_health dummy
scoreboard objectives add du_armor armor

#tool objectives
scoreboard objectives add du_wpick minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add du_gpick minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add du_spick minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add du_ipick minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add du_dpick minecraft.used:minecraft.diamond_pickaxe

scoreboard objectives add du_waxe minecraft.used:minecraft.wooden_axe
scoreboard objectives add du_gaxe minecraft.used:minecraft.golden_axe
scoreboard objectives add du_saxe minecraft.used:minecraft.stone_axe
scoreboard objectives add du_iaxe minecraft.used:minecraft.iron_axe
scoreboard objectives add du_daxe minecraft.used:minecraft.diamond_axe

scoreboard objectives add du_wshovel minecraft.used:minecraft.wooden_shovel
scoreboard objectives add du_gshovel minecraft.used:minecraft.golden_shovel
scoreboard objectives add du_sshovel minecraft.used:minecraft.stone_shovel
scoreboard objectives add du_ishovel minecraft.used:minecraft.iron_shovel
scoreboard objectives add du_dshovel minecraft.used:minecraft.diamond_shovel

scoreboard objectives add du_whoe minecraft.used:minecraft.wooden_hoe
scoreboard objectives add du_ghoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add du_shoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add du_ihoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add du_dhoe minecraft.used:minecraft.diamond_hoe

team add du_nopush
team modify du_nopush collisionRule never

#marks spawn chunks
kill @e[type=area_effect_cloud,tag=du_spawn_chunks]
summon area_effect_cloud ~ 0 ~ {Tags:["du_spawn_chunks"],Duration:2000000000}

#Seed for RNG
execute store result score in_0 du_data run data get entity @e[tag=du_spawn_chunks,limit=1] UUIDLeast 0.0000000001
function du:math/abs
scoreboard players operation rng_seed du_data = out_0 du_data

#ID stuff
execute unless score incr_id du_uuid matches ..2147483647 run scoreboard players set incr_id du_uuid 0

say [Loaded Datapack Utils vX by ImCoolYeah105]
