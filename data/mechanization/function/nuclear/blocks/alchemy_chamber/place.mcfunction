
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.alchemy_chamber"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:nuclear/block/alchemy_chamber"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.alchemy_chamber", "mechanization.redstone_control", "mechanization.upgradable", "smithed.block"]}

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:{"translate": "text.mechanization.dropper_gui", "font": "mechanization:gui", "with":[{"text": "\uee15", "color": "white"}, {"translate": "block.mechanization.alchemy_chamber"}]}}

# init data
function mechanization:base/utils/init_machine
