advancement revoke @s only mechanization:triggers/place_blast_furnace
execute store result score in_0 mech_data run data get entity @s SelectedItem.tag.mech_itemid
execute store result score $id mech_data run data get entity @s SelectedItem.tag.mech_itemid

execute align xyz positioned ~0.5 ~-6.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~-5.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~-4.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~-3.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~-2.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~-1.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~1.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~2.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~3.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~4.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~5.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
execute align xyz positioned ~0.5 ~6.5 ~0.5 run function mechanization:base/utils/blast_furnace_layer
