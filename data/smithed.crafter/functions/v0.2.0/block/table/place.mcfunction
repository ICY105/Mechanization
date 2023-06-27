execute if block ~ ~ ~ furnace[facing=north] run summon armor_stand ~ ~-0.5 ~ {Rotation: [180.0f, 0.0f], Tags: ["smithed.crafter", "smithed.default", "smithed.armor_stand"], Invisible: 1b, Marker: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:furnace", Count: 1b, tag: {CustomModelData: 4250001}}]}








execute if block ~ ~ ~ furnace[facing=south] run summon armor_stand ~ ~-0.5 ~ {Rotation: [0.0f, 0.0f], Tags: ["smithed.crafter", "smithed.default", "smithed.armor_stand"], Invisible: 1b, Marker: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:furnace", Count: 1b, tag: {CustomModelData: 4250001}}]}








execute if block ~ ~ ~ furnace[facing=east] run summon armor_stand ~ ~-0.5 ~ {Rotation: [-90.0f, 0.0f], Tags: ["smithed.crafter", "smithed.default", "smithed.armor_stand"], Invisible: 1b, Marker: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:furnace", Count: 1b, tag: {CustomModelData: 4250001}}]}








execute if block ~ ~ ~ furnace[facing=west] run summon armor_stand ~ ~-0.5 ~ {Rotation: [90.0f, 0.0f], Tags: ["smithed.crafter", "smithed.default", "smithed.armor_stand"], Invisible: 1b, Marker: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:furnace", Count: 1b, tag: {CustomModelData: 4250001}}]}









setblock ~ ~ ~ barrel[facing=up]{CustomName: '{"translate":"block.smithed.crafter.gui","font":"smithed.crafter:gui","color":"white","with":[{"translate":"block.smithed.crafter","color":"#3F3F3F","font":"minecraft:default"}]}'}
