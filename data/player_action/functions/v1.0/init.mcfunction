
schedule function player_action:v1.0/tick 100t
schedule function player_action:v1.0/tick 5t
data merge storage player_action:temp {list:[], obj:{}, var:""}

# dummy
scoreboard objectives add player_action.data dummy

scoreboard objectives add player_action.uuid.0 dummy
scoreboard objectives add player_action.uuid.1 dummy
scoreboard objectives add player_action.uuid.2 dummy
scoreboard objectives add player_action.uuid.3 dummy

scoreboard objectives add player_action.x dummy
scoreboard objectives add player_action.y dummy
scoreboard objectives add player_action.z dummy

team add player_action.no_push
team modify player_action.no_push collisionRule never

# movement
scoreboard objectives add player_action.aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add player_action.climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add player_action.fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add player_action.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add player_action.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add player_action.jump minecraft.custom:minecraft.jump

# other interactions
scoreboard objectives add player_action.death minecraft.custom:minecraft.deaths
scoreboard objectives add player_action.join minecraft.custom:minecraft.leave_game
scoreboard objectives add player_action.enchant minecraft.custom:minecraft.enchant_item
scoreboard objectives add player_action.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add player_action.use_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick

# block interactions
scoreboard objectives add player_action.dispenser minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add player_action.dropper minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add player_action.hopper minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add player_action.anvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add player_action.beacon minecraft.custom:minecraft.interact_with_beacon
scoreboard objectives add player_action.blast_furnace minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add player_action.brewing_stand minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add player_action.campfire minecraft.custom:minecraft.interact_with_campfire
scoreboard objectives add player_action.cartography_table minecraft.custom:minecraft.interact_with_cartography_table
scoreboard objectives add player_action.crafting_table minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add player_action.furnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add player_action.grindstone minecraft.custom:minecraft.interact_with_grindstone
scoreboard objectives add player_action.lectern minecraft.custom:minecraft.interact_with_lectern
scoreboard objectives add player_action.loom minecraft.custom:minecraft.interact_with_loom
scoreboard objectives add player_action.smithing_table minecraft.custom:minecraft.interact_with_smithing_table
scoreboard objectives add player_action.smoker minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add player_action.stonecutter minecraft.custom:minecraft.interact_with_stonecutter
scoreboard objectives add player_action.barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add player_action.chest minecraft.custom:minecraft.open_chest
scoreboard objectives add player_action.enderchest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add player_action.shulker_box minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add player_action.cake minecraft.custom:minecraft.eat_cake_slice
scoreboard objectives add player_action.fill_cauldron minecraft.custom:minecraft.fill_cauldron
scoreboard objectives add player_action.play_noteblock minecraft.custom:minecraft.play_noteblock
scoreboard objectives add player_action.jukebox minecraft.custom:minecraft.play_record
scoreboard objectives add player_action.flower_pot minecraft.custom:minecraft.pot_flower
scoreboard objectives add player_action.trapped_chest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add player_action.tune_noteblock minecraft.custom:minecraft.tune_noteblock
scoreboard objectives add player_action.use_cauldron minecraft.custom:minecraft.use_cauldron
scoreboard objectives add player_action.clean_armor minecraft.custom:minecraft.clean_armor
scoreboard objectives add player_action.clean_banner minecraft.custom:minecraft.clean_banner
scoreboard objectives add player_action.clean_shulker_box minecraft.custom:minecraft.clean_shulker_box
