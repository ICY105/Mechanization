
data modify storage smithed.crafter:main root.temp.b set from storage smithed.crafter:main root.temp.simplified[5]
data remove storage smithed.crafter:main root.temp.b.Count

execute store success score $temp1 smithed.data run data modify storage smithed.crafter:main root.temp.b set from storage smithed.crafter:main root.temp.a
execute if score $temp1 smithed.data matches 0 store result storage smithed.crafter:main root.temp.simplified[5].Count byte -1 run data get storage smithed.crafter:main root.temp.simplified[5].Count -1.000001
