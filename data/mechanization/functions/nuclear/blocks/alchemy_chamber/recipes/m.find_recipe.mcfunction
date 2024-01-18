
#$ 0: Item in slot 0. Checks data in recipe against full item data, allowing partial NBT matches.

$execute if data storage mechanization:temp obj.0$(0) run return 1

data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/alchemy_chamber/recipes/m.find_recipe with storage mechanization:temp list[0].input
