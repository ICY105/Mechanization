function mechanization:gadgets/upgrades/remove_upgrades_tools

tag @s[nbt={SelectedItem:{ tag:{mech_upgrades:{empowered:1}} }}] add mech_upgrade_empower_1
tag @s[nbt={SelectedItem:{ tag:{mech_upgrades:{empowered:2}} }}] add mech_upgrade_empower_2
tag @s[nbt={SelectedItem:{ tag:{mech_upgrades:{autosmelt:1}} }}] add mech_upgrade_autosmelt
tag @s[nbt={SelectedItem:{ tag:{mech_upgrades:{magnetic:1}} }}] add mech_upgrade_magnetic
tag @s[nbt={SelectedItem:{ tag:{mech_upgrades:{trash:1}} }}] add mech_upgrade_trash
tag @s[nbt={SelectedItem:{ tag:{mech_upgrades:{smash:1}} }}] add mech_upgrade_smash
