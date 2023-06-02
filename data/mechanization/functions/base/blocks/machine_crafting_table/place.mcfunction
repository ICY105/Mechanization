
# Summon Entity & Init
execute align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {  Tags:["mechanization", "mechanization.machine_crafting_table", "smithed.crafter", "smithed.block"],CustomName:'{"translate":"block.mechanization.machine_crafting_table"}', Marker:1b, Invisible:1b, Invulnerable:1b, NoGravity:1b, DisabledSlots:2039583, ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421005}}]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee06","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-256","font":"space:default","with":[{"translate":"block.mechanization.machine_crafting_table","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}
