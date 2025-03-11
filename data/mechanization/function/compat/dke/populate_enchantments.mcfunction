
data modify storage mechanization:registry enchantments append value {id:"dke:altitude",            items:"minecraft:elytra",                     max_level: 1, boost_level: 1, cost: 4, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:clear_skies",         items:"minecraft:shield",                     max_level: 1, boost_level: 1, cost: 2, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:deterioration_curse", items:"#dke:enchantable/deterioration_curse", max_level: 1, boost_level: 1, cost: 8, treasure: 0b, curse: 1b, exclusive:["minecraft:mending"]}
data modify storage mechanization:registry enchantments append value {id:"dke:dragon_lungs",        items:"#dke:enchantable/dragonsight",         max_level: 3, boost_level: 4, cost: 4, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:dragonbane",          items:"#minecraft:enchantable/weapon",        max_level: 4, boost_level: 6, cost: 2, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:dragonhearted",       items:"#dke:enchantable/dragonhearted",       max_level: 3, boost_level: 5, cost: 1, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:dragonsight",         items:"#dke:enchantable/dragonsight",         max_level: 1, boost_level: 1, cost: 4, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:dragonyield",         items:"#minecraft:enchantable/armor",         max_level: 3, boost_level: 4, cost: 8, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:exhalation",          items:"#minecraft:exclusive_set/bow",         max_level: 1, boost_level: 1, cost: 1, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:kickback",            items:"minecraft:shield",                     max_level: 1, boost_level: 1, cost: 2, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"dke:pillaring",           items:"#minecraft:pickaxes",                  max_level: 1, boost_level: 3, cost: 8, treasure: 0b, curse: 0b, exclusive:["minecraft:fortune", "minecraft:silk_touch"]}
data modify storage mechanization:registry enchantments append value {id:"dke:voidwalk",            items:"#minecraft:enchantable/foot_armor",    max_level: 1, boost_level: 1, cost: 4, treasure: 0b, curse: 0b, exclusive:["minecraft:depth_strider", "minecraft:frost_walker"]}
data modify storage mechanization:registry enchantments append value {id:"dke:wingspan",            items:"#minecraft:enchantable/sword",         max_level: 5, boost_level: 7, cost: 1, treasure: 0b, curse: 0b, exclusive:["minecraft:sweeping_edge"]}


data modify storage mechanization:registry enchantments[{id:"minecraft:sweeping_edge"}].exclusive append value "dke:wingspan"

execute unless data storage mechanization:registry enchantments[{id:"minecraft:mending"}].exclusive run data modify storage mechanization:registry enchantments[{id:"minecraft:mending"}].exclusive set value []
data modify storage mechanization:registry enchantments[{id:"minecraft:mending"}].exclusive append value "dke:deterioration_curse"

data modify storage mechanization:registry enchantments[{id:"minecraft:fortune"}].exclusive append value "dke:pillaring"
data modify storage mechanization:registry enchantments[{id:"minecraft:silk_touch"}].exclusive append value "dke:pillaring"

data modify storage mechanization:registry enchantments[{id:"minecraft:depth_strider"}].exclusive append value "dke:voidwalk"
data modify storage mechanization:registry enchantments[{id:"minecraft:frost_walker"}].exclusive append value "dke:voidwalk"

data modify storage mechanization:registry enchantments[{id:"minecraft:sharpness"}].exclusive append value "dke:dragonbane"
data modify storage mechanization:registry enchantments[{id:"minecraft:smite"}].exclusive append value "dke:dragonbane"
data modify storage mechanization:registry enchantments[{id:"minecraft:breech"}].exclusive append value "dke:dragonbane"
data modify storage mechanization:registry enchantments[{id:"minecraft:density"}].exclusive append value "dke:dragonbane"
data modify storage mechanization:registry enchantments[{id:"minecraft:bane_of_arthopods"}].exclusive append value "dke:dragonbane"

