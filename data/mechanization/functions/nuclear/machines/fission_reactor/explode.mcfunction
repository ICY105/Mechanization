fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace
kill @e[distance=..16,tag=!global.ignore.kill]
effect give @e[distance=..48] wither 60 2

summon creeper ~ ~7 ~ {ExplosionRadius:5,Fuse:0}
summon creeper ~ ~-7 ~ {ExplosionRadius:5,Fuse:0}
summon creeper ~7 ~ ~ {ExplosionRadius:5,Fuse:0}
summon creeper ~-7 ~ ~ {ExplosionRadius:5,Fuse:0}
summon creeper ~ ~ ~7 {ExplosionRadius:5,Fuse:0}
summon creeper ~ ~ ~-7 {ExplosionRadius:5,Fuse:0}

playsound mechanization:nuclear.fission_reactor_explosion block @a[distance=..64] ~ ~1 ~ 4
