
data modify storage mechanization:registry enchantments append value {id:"valiance:burdening_curse",     items:"#minecraft:enchantable/armor",       max_level: 1, boost_level: 1, cost: 2, treasure: 0b, curse: 1b}
data modify storage mechanization:registry enchantments append value {id:"valiance:deterioration_curse", items:"#minecraft:enchantable/durability",  max_level: 1, boost_level: 1, cost: 2, treasure: 0b, curse: 1b}
data modify storage mechanization:registry enchantments append value {id:"valiance:guard",               items:"#valiance:enchantable/shield",       max_level: 3, boost_level: 5, cost: 2, treasure: 0b, curse: 0b}
data modify storage mechanization:registry enchantments append value {id:"valiance:lightweight",         items:"#minecraft:enchantable/mace",        max_level: 3, boost_level: 5, cost: 2, treasure: 0b, curse: 0b, exclusive:["minecraft:sharpness", "minecraft:smite", "minecraft:breech", "minecraft:density", "minecraft:bane_of_arthopods", "valiance:vigilant"]}
data modify storage mechanization:registry enchantments append value {id:"valiance:vigilant",            items:"#minecraft:enchantable/weapon",      max_level: 5, boost_level: 7, cost: 2, treasure: 0b, curse: 0b, exclusive:["minecraft:sharpness", "minecraft:smite", "minecraft:breech", "minecraft:density", "minecraft:bane_of_arthopods", "valiance:lightweight"]}

data modify storage mechanization:registry enchantments[{id:"minecraft:sharpness"}].exclusive append value "valiance:lightweight"
data modify storage mechanization:registry enchantments[{id:"minecraft:smite"}].exclusive append value "valiance:lightweight"
data modify storage mechanization:registry enchantments[{id:"minecraft:breech"}].exclusive append value "valiance:lightweight"
data modify storage mechanization:registry enchantments[{id:"minecraft:density"}].exclusive append value "valiance:lightweight"
data modify storage mechanization:registry enchantments[{id:"minecraft:bane_of_arthopods"}].exclusive append value "valiance:lightweight"

data modify storage mechanization:registry enchantments[{id:"minecraft:sharpness"}].exclusive append value "valiance:vigilant"
data modify storage mechanization:registry enchantments[{id:"minecraft:smite"}].exclusive append value "valiance:vigilant"
data modify storage mechanization:registry enchantments[{id:"minecraft:breech"}].exclusive append value "valiance:vigilant"
data modify storage mechanization:registry enchantments[{id:"minecraft:density"}].exclusive append value "valiance:vigilant"
data modify storage mechanization:registry enchantments[{id:"minecraft:bane_of_arthopods"}].exclusive append value "valiance:vigilant"
