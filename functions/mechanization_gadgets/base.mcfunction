#placement
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ function mechanization_gadgets:placement

#wrench
execute @e[tag=wrench_break] ~ ~ ~ function mechanization_gadgets:wrench_break

#tinker table
execute @s[score_timer_min=13,score_timer=13] ~ ~ ~ execute @e[tag=tinkertable,score_powerBuffer_min=150] ~ ~0.75 ~ function mechanization_gadgets:tinker_table if @e[type=item,r=1,c=1]

#delayed tick
execute @s[score_timer_min=0,score_timer=0] ~ ~ ~ function mechanization_gadgets:delayed

#manages weapon firing
scoreboard players set @a weaponType -1
scoreboard players set @a weaponType 0 {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1}}}
scoreboard players set @a[score_reloadTime_min=1] stick 0
scoreboard players remove @a[score_reloadTime_min=1] reloadTime 1
execute @a[score_weaponType_min=0,score_stick_min=1] ~ ~ ~ function mechanization_gadgets:weapons/weapons
scoreboard players set @a[score_weaponType=-1,score_stick_min=1] stick 0
scoreboard players set @a[score_stick_min=4] stick 0

#manages weapon bullets
kill @e[tag=projDamage]
execute @e[type=boat,tag=rifleShot] ~ ~ ~ function mechanization_gadgets:bullets/riflebullet
execute @e[type=boat,tag=laserShot] ~ ~ ~ function mechanization_gadgets:bullets/laserbullet
execute @e[type=boat,tag=flameShot] ~ ~ ~ function mechanization_gadgets:bullets/flamebullet
execute @e[type=boat,tag=sniperShot] ~ ~ ~ function mechanization_gadgets:bullets/sniperbullet
execute @e[type=boat,tag=pistolShot] ~ ~ ~ function mechanization_gadgets:bullets/pistolbullet
execute @e[type=boat,tag=rocketShot] ~ ~ ~ function mechanization_gadgets:bullets/rocketbullet
execute @e[type=boat,tag=rifleLShot] ~ ~ ~ function mechanization_gadgets:bullets/laserriflebullet
execute @e[type=boat,tag=railgunShot] ~ ~ ~ function mechanization_gadgets:bullets/railgunbullet
execute @e[type=boat,tag=smgShot] ~ ~ ~ function mechanization_gadgets:bullets/smgbullet

#armor effects
execute @s[score_timer_min=14,score_timer=14] ~ ~ ~ execute @a ~ ~ ~ function mechanization_gadgets:armor
execute @a[tag=invisable,c=1] ~ ~ ~ execute @e[tag=invisMarker,c=1] ~ ~ ~ teleport @a[tag=invisable,c=1] ~ ~ ~
execute @a[score_powerBuffer_min=25,tag=slowfall] ~ ~ ~ detect ~ ~-2 ~ minecraft:air 0 effect @s minecraft:levitation 1 250 true
execute @a[score_powerBuffer_min=25,tag=slowfall] ~ ~ ~ detect ~ ~-2 ~ minecraft:air 0 effect @s minecraft:jump_boost 1 255 true
execute @a[score_powerBuffer_min=25,tag=slowfall] ~ ~ ~ detect ~ ~-2 ~ minecraft:air 0 scoreboard players remove @s powerBuffer 5

#ender pearl gadget
execute @a[score_throwPearl_min=1] ~ ~ ~ function mechanization_gadgets:infinity_pearl
scoreboard players tag @a remove sPearl
scoreboard players tag @a add sPearl {SelectedItem:{id:"minecraft:ender_pearl",tag:{ench:[{id:51,lvl:1}]}}}