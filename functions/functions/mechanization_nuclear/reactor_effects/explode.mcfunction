fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air
summon creeper ~ ~1 ~ {ExplosionRadius:12,Fuse:0,Invulnerable:1}
playsound mech.reactor_explode neutral @a[r=48] ~ ~ ~ 2 1.0 0.1
kill @e[r=16,type=player]