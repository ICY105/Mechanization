#machine ticks
execute @e[type=armor_stand,tag=industrialFurnace,score_powerBuffer_min=10] ~ ~ ~ function mechanization_machines:machines/industrialfurnace
execute @s[score_timer_min=5,score_timer=5] ~ ~ ~ execute @e[type=armor_stand,tag=eleFurnace,score_powerBuffer_min=20] ~ ~ ~ function mechanization_machines:machines/elefurnace
execute @s[score_timer_min=6,score_timer=6] ~ ~ ~ execute @e[type=armor_stand,tag=farmbot] ~ ~ ~ function mechanization_machines:machines/farmbot
execute @s[score_timer_min=7,score_timer=7] ~ ~ ~ execute @e[type=armor_stand,tag=fellerbot] ~ ~ ~ function mechanization_machines:machines/fellerbot
execute @s[score_timer_min=8,score_timer=8] ~ ~ ~ execute @e[type=armor_stand,tag=Grinder,score_powerBuffer_min=80] ~ ~ ~ function mechanization_machines:machines/grinder/grinder
execute @s[score_timer_min=15,score_timer=15] ~ ~ ~ execute @e[type=armor_stand,tag=alloy,score_powerBuffer_min=60] ~ ~ ~ function mechanization_machines:machines/alloy_furnace/alloy_furnace
execute @s[score_timer_min=16,score_timer=16] ~ ~ ~ execute @e[type=armor_stand,tag=block_breaker,score_powerBuffer_min=40] ~ ~ ~ function mechanization_machines:machines/block_breaker
execute @s[score_timer_min=17,score_timer=17] ~ ~ ~ execute @e[type=armor_stand,tag=gravity_manipulator,score_powerBuffer_min=40] ~ ~ ~ function mechanization_machines:machines/gravity_manipulator
execute @s[score_timer_min=18,score_timer=18] ~ ~ ~ execute @e[type=armor_stand,tag=teleporter_core,score_powerBuffer_min=1000] ~ ~ ~ function mechanization_machines:machines/teleporter_core

execute @s[score_timer250=50,score_timer250_min=50] ~ ~ ~ execute @e[type=armor_stand,tag=Farm,score_powerBuffer_min=1000] ~ ~ ~ function mechanization_machines:machines/farm
execute @s[score_timer250=100,score_timer250_min=100] ~ ~ ~ execute @e[type=armor_stand,tag=mobKiller,score_powerBuffer_min=1200] ~ ~ ~ function mechanization_machines:machines/mobgrinder
execute @s[score_timer250=150,score_timer250_min=150] ~ ~ ~ execute @e[type=armor_stand,tag=treeFeller,score_powerBuffer_min=800] ~ ~ ~ function mechanization_machines:machines/treefeller
execute @s[score_timer250=200,score_timer250_min=200] ~ ~ ~ execute @e[type=armor_stand,tag=miner1,score_powerBuffer_min=1500] ~ ~ ~ function mechanization_machines:machines/quarry
execute @s[score_timer250=248,score_timer250_min=248] ~ ~ ~ function mechanization_machines:machines/chunk_loader/chunk_loader

#generator tick
execute @s[score_timer_min=9,score_timer=9] ~ ~ ~ function mechanization_machines:machines/generators

#wrench
execute @e[type=silverfish,tag=wrench_break] ~ ~ ~ function mechanization_machines:wrench_break
execute @e[type=silverfish,tag=wrench_function] ~ ~ ~ function mechanization_machines:wrench_function

#placement
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ function mechanization_machines:placement

#once per second
execute @s[score_timer_min=0,score_timer=0] ~ ~ ~ function mechanization_machines:delayed