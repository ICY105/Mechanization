scoreboard players operation $decimalLast smithed.data = $decimal smithed.data
scoreboard players operation $decimalLast smithed.data %= $10 bolt.expr.const








































































































                # tellraw @s ["Whole: ", {"score":{"name":"$whole","objective":"smithed.data"}}]
                # tellraw @s ["Decim: ", {"score":{"name":"$decimal","objective":"smithed.data"}}]



execute if score $decimalLast smithed.data matches 0 run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/legs/simplify/iter




                    # say high_low


                    # say high















