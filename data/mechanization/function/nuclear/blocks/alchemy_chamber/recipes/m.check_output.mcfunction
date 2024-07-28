
#> #count mechanization.data: number of items in output slot
#$ 0: Item in slot 0. Checks data in recipe against full item data, allowing partial NBT matches.

execute if score #count mechanization.data matches 0 run return 1
execute store result score #max_count mechanization.data run data get storage mechanization:temp list[0].output.0.stacksize
execute if score #count mechanization.data >= #max_count mechanization.data run return 0

$execute if data block -30000000 0 1602 Items[$(1)] run return 1
return 0
