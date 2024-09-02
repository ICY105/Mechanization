
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.block_breaker", "mechanization.upgradable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"],CustomName:'{"translate":"block.mechanization.block_breaker"}'}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_1","mechanization.block_hitbox.block_breaker"]}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:air
