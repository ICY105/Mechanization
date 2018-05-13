tag @s add mech_landed

execute if entity @s[nbt={Trident:{tag:{ mech_upgrades:{poison:1} }}}] run effect give @e[distance=..3,nbt={HurtTime:10s}] poison 4 1
execute if entity @s[nbt={Trident:{tag:{ mech_upgrades:{wither:1} }}}] run effect give @e[distance=..3,nbt={HurtTime:10s}] wither 4 1
execute if entity @s[nbt={Trident:{tag:{ mech_upgrades:{slowness:1} }}}] run effect give @e[distance=..3,nbt={HurtTime:10s}] slowness 4 0
execute if entity @s[nbt={Trident:{tag:{ mech_upgrades:{weakness:1} }}}] run effect give @e[distance=..3,nbt={HurtTime:10s}] weakness 4 0
execute if entity @s[nbt={Trident:{tag:{ mech_upgrades:{glow:1} }}}] run effect give @e[distance=..3,nbt={HurtTime:10s}] glowing 4 0
