fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace

kill @e[distance=..5]
kill @a[distance=..16]
effect give @a[distance=..48] wither 60 2

summon creeper ~ ~ ~ {ExplosionRadius:6,Fuse:0}

playsound mechanization:nuclear.fission_reactor_explosion block @a[distance=..64] ~ ~1 ~ 4
