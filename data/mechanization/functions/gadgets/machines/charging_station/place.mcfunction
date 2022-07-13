
# Summon Entity & Init
execute align xyz run summon minecraft:armor_stand ~0.5 ~0.25 ~0.5 {Tags:["mechanization.new", "mechanization.charging_station", "mechanization.redstone_control", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.charging_station"}', Marker:0b, Invisible:1,Invulnerable:1, NoGravity:1, DisabledSlots:1973790, ShowArms:1, Small:1, Pose:{RightArm:[-90f,-90f,90f]}, ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6424000}}]}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier
