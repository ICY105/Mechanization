
#centrifuge
execute if score $id mechanization.data matches 3000 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mech_centrifuge","mech_receiver","global.ignore","smithed.block"],CustomName:'{"translate":"mech.block.centrifuge"}',Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:1973790,ArmorItems:[{},{},{},{id:blast_furnace,Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6423201}}]}
execute if score $id mechanization.data matches 3000 run summon minecraft:item_frame ~ ~ ~ { Tags:["mech_centrifuge_model","global.ignore","smithed.block"],CustomName:'{"translate":"mech.block.centrifuge"}',ItemRotation:0,Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:blast_furnace,Count:1b,tag:{CustomModelData:6423200}}}
execute if score $id mechanization.data matches 3000 run scoreboard players set @e[tag=mech_centrifuge,distance=..0.25] mechanization.stored_energy 0
execute if score $id mechanization.data matches 3000 run setblock ~ ~ ~ minecraft:barrier

#Control Rod
execute if score $id mechanization.data matches 3001 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_control_rod","global.ignore","smithed.block"],ItemRotation:0,Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:blast_furnace,Count:1b,tag:{CustomModelData:6423001}}}
execute if score $id mechanization.data matches 3001 run setblock ~ ~ ~ minecraft:barrier

#Fission Reactor
execute if score $id mechanization.data matches 3002 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mech_fission_reactor","global.ignore","smithed.block"],Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:1973790,ArmorItems:[{},{},{},{id:blast_furnace,Count:1b,tag:{mech_x:0,mech_y:0,CustomModelData:6423002}}]}
execute if score $id mechanization.data matches 3002 run scoreboard players set @e[tag=mech_fission_reactor,distance=..0.5,sort=nearest,limit=1] mech_x 0
execute if score $id mechanization.data matches 3002 run scoreboard players set @e[tag=mech_fission_reactor,distance=..0.5,sort=nearest,limit=1] mech_y 0
execute if score $id mechanization.data matches 3002 run setblock ~ ~ ~ minecraft:barrier

#Steam Turbine
execute if score $id mechanization.data matches 3004 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mech_turbine","mech_transmitter","global.ignore","smithed.block"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,ShowArms:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:blast_furnace,Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6423206}}]}
execute if score $id mechanization.data matches 3004 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_turbine_model","smithed.block"],ItemRotation:0,Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:blast_furnace,Count:1b,tag:{CustomModelData:6423205}}}
execute if score $id mechanization.data matches 3004 run scoreboard players set @e[tag=mech_turbine,distance=..0.25] mechanization.stored_energy 0
execute if score $id mechanization.data matches 3004 run setblock ~ ~ ~ minecraft:barrier

#Rate Observer
execute if score $id mechanization.data matches 3003 run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mech_rate_observer","global.ignore","smithed.block"],ItemRotation:0,Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:blast_furnace,Count:1b,tag:{CustomModelData:6423003}}}
execute if score $id mechanization.data matches 3003 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:'{"translate":"mech.block.reaction_rate_observer","color":"dark_gray","italic":false}'}

#Temp Observer
execute if score $id mechanization.data matches 3005 run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mech_temp_observer","global.ignore","smithed.block"],ItemRotation:0,Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:blast_furnace,Count:1b,tag:{CustomModelData:6423005}}}
execute if score $id mechanization.data matches 3005 run setblock ~ ~ ~ minecraft:dropper{Lock:"afhoigbioasbas",CustomName:'{"translate":"mech.block.temperature_observer","color":"dark_gray","italic":false}'}
