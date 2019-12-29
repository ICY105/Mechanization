
#normal mode
execute if score $base.config.ore_compatibility mech_data matches 0 if score $world.in_0 du_data = $cons.copper_ore mech_data run setblock ~ ~ ~ minecraft:stone_brick_slab[waterlogged=true,type=double]
execute if score $base.config.ore_compatibility mech_data matches 0 if score $world.in_0 du_data = $cons.tin_ore mech_data run setblock ~ ~ ~ minecraft:stone_slab[waterlogged=true,type=double]
execute if score $base.config.ore_compatibility mech_data matches 0 if score $world.in_0 du_data = $cons.titanium_ore mech_data run setblock ~ ~ ~ minecraft:smooth_stone_slab[waterlogged=true,type=double]
execute if score $base.config.ore_compatibility mech_data matches 0 if score $world.in_0 du_data = $cons.uranium_ore mech_data run setblock ~ ~ ~ minecraft:cobblestone_slab[waterlogged=true,type=double]

#compatibility mode
execute if score $base.config.ore_compatibility mech_data matches 1 if score $world.in_0 du_data = $cons.copper_ore mech_data run setblock ~ ~ ~ minecraft:player_head{Owner:{Id:"00000000-0000-0000-ee69-000000000001",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFkMWFkMmJkMzdmOWEzYjdjODk2MmJkZTEyODkyYTU1NTg2OTIzNmYyODU3Mzg3YzgyNTZiNGU0M2I1MCJ9fX0"}]}}}
execute if score $base.config.ore_compatibility mech_data matches 1 if score $world.in_0 du_data = $cons.tin_ore mech_data run setblock ~ ~ ~ minecraft:player_head{Owner:{Id:"00000000-0000-0000-ee69-000000000002",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YzNDdiMjdiN2QxMjM4NTlmY2QzYWJmZWU4NmY3YWEwNTgzMjFmOGFmODQ3Nzc0ZTg4ZmQ4YTY3MDI3NzQifX19"}]}}}
execute if score $base.config.ore_compatibility mech_data matches 1 if score $world.in_0 du_data = $cons.titanium_ore mech_data run setblock ~ ~ ~ minecraft:player_head{Owner:{Id:"00000000-0000-0000-ee69-000000000003",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTk3MDk1MThlY2IyZmQ0OGE5ODE1YjI2YjMyMjFhMzBmMTZiZjA1MDk3MTA1ZWQwODZmNWViODE3OTkxIn19fQ"}]}}}
execute if score $base.config.ore_compatibility mech_data matches 1 if score $world.in_0 du_data = $cons.uranium_ore mech_data run setblock ~ ~ ~ minecraft:player_head{Owner:{Id:"00000000-0000-0000-ee69-000000000004",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZmMTIzNWJiMGMwMzgzMDIwZWY2MmViZTUyMmMxOWY0YmUxNjhkNDcyZTg4ODY5NDkwN2UzYzFlZTQifX19"}]}}}

#normal ores
execute if score $world.in_0 du_data = $cons.emerald_ore mech_data run setblock ~ ~ ~ minecraft:emerald_ore
