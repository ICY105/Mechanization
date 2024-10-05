
# ores
execute if items block ~ ~ ~ container.0 minecraft:coal_ore if items block ~ ~ ~ container.2 minecraft:coal run return 1
execute if items block ~ ~ ~ container.0 minecraft:iron_ore if items block ~ ~ ~ container.2 minecraft:iron_ingot run return 1
execute if items block ~ ~ ~ container.0 minecraft:copper_ore if items block ~ ~ ~ container.2 minecraft:copper_ingot run return 1
execute if items block ~ ~ ~ container.0 minecraft:gold_ore if items block ~ ~ ~ container.2 minecraft:gold_ingot run return 1
execute if items block ~ ~ ~ container.0 minecraft:diamond_ore if items block ~ ~ ~ container.2 minecraft:diamond run return 1
execute if items block ~ ~ ~ container.0 minecraft:emerald_ore if items block ~ ~ ~ container.2 minecraft:emerald run return 1
execute if items block ~ ~ ~ container.0 minecraft:redstone_ore if items block ~ ~ ~ container.2 minecraft:redstone run return 1
execute if items block ~ ~ ~ container.0 minecraft:lapis_ore if items block ~ ~ ~ container.2 minecraft:lapis_lazuli run return 1

execute if items block ~ ~ ~ container.0 minecraft:deepslate_coal_ore if items block ~ ~ ~ container.2 minecraft:coal run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_iron_ore if items block ~ ~ ~ container.2 minecraft:iron_ingot run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_copper_ore if items block ~ ~ ~ container.2 minecraft:copper_ingot run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_gold_ore if items block ~ ~ ~ container.2 minecraft:gold_ingot run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_diamond_ore if items block ~ ~ ~ container.2 minecraft:diamond run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_emerald_ore if items block ~ ~ ~ container.2 minecraft:emerald run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_redstone_ore if items block ~ ~ ~ container.2 minecraft:redstone run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_lapis_ore if items block ~ ~ ~ container.2 minecraft:lapis_lazuli run return 1

execute if items block ~ ~ ~ container.0 minecraft:nether_quartz_ore if items block ~ ~ ~ container.2 minecraft:quartz run return 1
execute if items block ~ ~ ~ container.0 minecraft:nether_gold_ore if items block ~ ~ ~ container.2 minecraft:gold_ingot run return 1

execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{tin:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{titanium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{uranium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium:1b}}}}] run return 1

# logs
execute if items block ~ ~ ~ container.0 #minecraft:logs if items block ~ ~ ~ container.2 minecraft:charcoal run return 1

# extra
execute if items block ~ ~ ~ container.0 minecraft:cobblestone if items block ~ ~ ~ container.2 minecraft:glass run return 1
execute if items block ~ ~ ~ container.0 minecraft:stone if items block ~ ~ ~ container.2 minecraft:flint run return 1
execute if items block ~ ~ ~ container.0 minecraft:netherrack if items block ~ ~ ~ container.2 minecraft:glass run return 1
execute if items block ~ ~ ~ container.0 minecraft:gravel if items block ~ ~ ~ container.2 minecraft:flint run return 1
execute if items block ~ ~ ~ container.0 minecraft:blaze_rod if items block ~ ~ ~ container.2 minecraft:blaze_powder run return 1
execute if items block ~ ~ ~ container.0 minecraft:bone if items block ~ ~ ~ container.2 minecraft:bone_meal run return 1

return fail
