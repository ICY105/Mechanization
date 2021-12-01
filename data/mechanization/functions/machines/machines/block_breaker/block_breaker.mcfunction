
execute if score $base.cf.backup mech_data matches 1 if entity @s[tag=!mech_upgrade_nether] run function mechanization:machines/machines/block_breaker/normal
execute if score $base.cf.backup mech_data matches 1 if entity @s[tag=mech_upgrade_nether] run function mechanization:machines/machines/block_breaker/nether
