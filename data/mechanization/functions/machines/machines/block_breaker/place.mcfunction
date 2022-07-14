
# Summon Entity & Init
summon minecraft:marker ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.block_breaker", "mechanization.upgradable", "energy.receive", "smithed.block"],CustomName:'{"translate":"mech.block.block_breaker"}'}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:air
