
#$ 0: Minecraft item id in slot 0. Does not check NBT data.

data modify storage mechanization:temp list set value []
$data modify storage mechanization:temp list append from storage mechanization:registry recipes.alchemy_chamber[{input: {0: {id: "$(0)"}}}]
