gamerule commandBlockOutput false

gamerule maxCommandChainLength 1000000
scoreboard objectives add mech_timer dummy
scoreboard objectives add mech_power dummy
scoreboard objectives add mech_gridid trigger
scoreboard objectives add mech_data dummy
scoreboard objectives add mech_x dummy
scoreboard objectives add mech_y dummy
scoreboard objectives add mech_z dummy
scoreboard objectives add mech_usedid dummy
scoreboard objectives add mech_manual trigger

scoreboard objectives add mech_talked minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add mech_pickuphead minecraft.picked_up:minecraft.player_head

scoreboard objectives add mech_crafter minecraft.crafted:minecraft.damaged_anvil

scoreboard objectives add mech_mineore minecraft.mined:minecraft.petrified_oak_slab

scoreboard objectives add mech_itemslot dummy
scoreboard objectives add mech_firerate dummy
scoreboard objectives add mech_weaponheat dummy
scoreboard objectives add mech_usesword minecraft.used:minecraft.diamond_sword
scoreboard objectives add mech_usetrident minecraft.used:minecraft.trident
scoreboard objectives add mech_usepick minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add mech_useaxe minecraft.used:minecraft.diamond_axe
scoreboard objectives add mech_useshovel minecraft.used:minecraft.diamond_shovel

scoreboard objectives add mech_breakstone minecraft.mined:minecraft.stone
scoreboard objectives add mech_breakcobble minecraft.mined:minecraft.cobblestone
scoreboard objectives add mech_breaksand minecraft.mined:minecraft.sand
scoreboard objectives add mech_breakrsand minecraft.mined:minecraft.red_sand
scoreboard objectives add mech_breakgold minecraft.mined:minecraft.gold_ore
scoreboard objectives add mech_breakiron minecraft.mined:minecraft.iron_ore
scoreboard objectives add mech_breakoak minecraft.mined:minecraft.oak_log
scoreboard objectives add mech_breakspruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add mech_breakbirch minecraft.mined:minecraft.birch_log
scoreboard objectives add mech_breakjungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add mech_breakacacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add mech_breakdark minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add mech_breakclay minecraft.mined:minecraft.clay
scoreboard objectives add mech_breaknether minecraft.mined:minecraft.netherrack
scoreboard objectives add mech_breakbricks minecraft.mined:minecraft.stone_bricks
scoreboard objectives add mech_breakcactus minecraft.mined:minecraft.cactus
scoreboard objectives add mech_breaksponge minecraft.mined:minecraft.wet_sponge
scoreboard objectives add mech_breakhead minecraft.mined:minecraft.player_head
scoreboard objectives add mech_breakgranit minecraft.mined:minecraft.granite
scoreboard objectives add mech_breakdiorit minecraft.mined:minecraft.diorite
scoreboard objectives add mech_breakandesi minecraft.mined:minecraft.andesite

#set up ore gen
scoreboard objectives add du_data dummy
scoreboard players set worldgen du_data 1

#sets up dimensional chunk loading
fill ~-2 0 ~-2 ~2 1 ~2 bedrock
setblock ~1 1 ~ nether_portal
setblock ~-1 1 ~ end_portal

#Installation message
tellraw @a[tag=!mech_installation] ["",{"translate":"mech.text.load_1","color":"dark_red"},{"text":"mech.text.load_2","color":"blue"}]
tag @a add mech_installation

say [Loaded Mechanization vX by ImCoolYeah105]
