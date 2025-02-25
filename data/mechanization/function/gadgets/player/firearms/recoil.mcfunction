
#vertical
execute store result score #rng.out mechanization.data run random value 0..7

execute if score #rng.out mechanization.data matches 1 at @s run tp @s ~ ~ ~ ~ ~-0.5
execute if score #rng.out mechanization.data matches 2 at @s run tp @s ~ ~ ~ ~ ~-1
execute if score #rng.out mechanization.data matches 3 at @s run tp @s ~ ~ ~ ~ ~-1.5
execute if score #rng.out mechanization.data matches 4 at @s run tp @s ~ ~ ~ ~ ~-2
execute if score #rng.out mechanization.data matches 5 at @s run tp @s ~ ~ ~ ~ ~-2.5
execute if score #rng.out mechanization.data matches 6 at @s run tp @s ~ ~ ~ ~ ~-3
execute if score #rng.out mechanization.data matches 7 at @s run tp @s ~ ~ ~ ~ ~-3.5
execute if score #rng.out mechanization.data matches 8 at @s run tp @s ~ ~ ~ ~ ~-4

#horizontal
execute store result score #rng.out mechanization.data run random value -8..8

execute if score #rng.out mechanization.data matches -8 at @s run tp @s ~ ~ ~ ~-4.0 ~
execute if score #rng.out mechanization.data matches -7 at @s run tp @s ~ ~ ~ ~-3.5 ~
execute if score #rng.out mechanization.data matches -6 at @s run tp @s ~ ~ ~ ~-3.0 ~
execute if score #rng.out mechanization.data matches -5 at @s run tp @s ~ ~ ~ ~-2.5 ~
execute if score #rng.out mechanization.data matches -4 at @s run tp @s ~ ~ ~ ~-2.0 ~
execute if score #rng.out mechanization.data matches -3 at @s run tp @s ~ ~ ~ ~-1.5 ~
execute if score #rng.out mechanization.data matches -2 at @s run tp @s ~ ~ ~ ~-1.0 ~
execute if score #rng.out mechanization.data matches -1 at @s run tp @s ~ ~ ~ ~-0.5 ~

execute if score #rng.out mechanization.data matches 1 at @s run tp @s ~ ~ ~ ~0.5 ~
execute if score #rng.out mechanization.data matches 2 at @s run tp @s ~ ~ ~ ~1.0 ~
execute if score #rng.out mechanization.data matches 3 at @s run tp @s ~ ~ ~ ~1.5 ~
execute if score #rng.out mechanization.data matches 4 at @s run tp @s ~ ~ ~ ~2.0 ~
execute if score #rng.out mechanization.data matches 5 at @s run tp @s ~ ~ ~ ~2.5 ~
execute if score #rng.out mechanization.data matches 6 at @s run tp @s ~ ~ ~ ~3.0 ~
execute if score #rng.out mechanization.data matches 7 at @s run tp @s ~ ~ ~ ~3.5 ~
execute if score #rng.out mechanization.data matches 8 at @s run tp @s ~ ~ ~ ~4.0 ~
