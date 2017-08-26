execute @a[tag=sPearl] ~ ~ ~ entitydata @e[type=ender_pearl,c=1] {NoGravity:1}
execute @a[tag=sPearl] ~ ~ ~ playsound mech.infinity_pearl player @s
scoreboard players set @s throwPearl 0