
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.block_breaker"}, \
    Tags:["mechanization", "mechanization.new", "mechanization.block_breaker", "mechanization.upgradable", "mechanization.observable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"]}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:air
