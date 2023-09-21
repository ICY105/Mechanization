
# remove old data
data remove storage chunk_scan.ores:registry overworld
data remove storage chunk_scan.ores:registry the_nether
data remove storage chunk_scan.ores:registry the_end
data remove storage chunk_scan.ores:registry custom

# wipe new registry
data modify storage chunk_scan.ores:registry input set value {}
data modify storage chunk_scan.ores:registry registry set value {}
