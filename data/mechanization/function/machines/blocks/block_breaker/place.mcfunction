
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.block_breaker", "mechanization.upgradable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"],CustomName:'{"translate":"block.mechanization.block_breaker"}'}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:air
