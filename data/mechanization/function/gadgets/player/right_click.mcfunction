
advancement revoke @s only mechanization:triggers/use_plasma_weapon

execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"energy_saber"}}] run function mechanization:gadgets/player/energy_saber/throw_saber
execute if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"epac"}}] unless score @s mechanization.firerate matches 1.. unless score @s mechanization.weaponheat matches 1000.. run function mechanization:gadgets/player/firearms/fire_weapon
