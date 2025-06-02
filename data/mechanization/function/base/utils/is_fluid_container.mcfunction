
clone -30000000 0 3201 -30000000 0 3201 -859 64 822

execute if items block -30000000 0 3201 container.0 #mechanization:fluid_item run return 1
execute if items block -30000000 0 3201 container.0 *[minecraft:custom_data~{fluid:{}}] unless items block -30000000 0 3201 container.0 *[minecraft:custom_data~{fluid:{storage: 0}}] run return 1
return 0
