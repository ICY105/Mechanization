
scoreboard players set #current_level mechanization.data 0

#set output
execute if data storage mechanization:temp {var:"minecraft:unbreaking"     } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if data storage mechanization:temp {var:"minecraft:mending"        } if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:mending"}] run scoreboard players set #current_level mechanization.data 2000000
execute if data storage mechanization:temp {var:"minecraft:vanishing_curse"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:vanishing_curse"}] run scoreboard players set #current_level mechanization.data 2000000

execute if data storage mechanization:temp {var:"minecraft:sharpness"         } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
execute if data storage mechanization:temp {var:"minecraft:smite"             } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:smite"}].lvl
execute if data storage mechanization:temp {var:"minecraft:bane_of_arthropods"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl
execute if data storage mechanization:temp {var:"minecraft:knockback"         } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute if data storage mechanization:temp {var:"minecraft:fire_aspect"       } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute if data storage mechanization:temp {var:"minecraft:looting"           } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:looting"}].lvl

execute if data storage mechanization:temp {var:"minecraft:efficiency"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute if data storage mechanization:temp {var:"minecraft:fortune"   } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute if data storage mechanization:temp {var:"minecraft:silk_touch"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players set #current_level mechanization.data 2000000

execute if data storage mechanization:temp {var:"minecraft:protection"           } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if data storage mechanization:temp {var:"minecraft:fire_protection"      } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:fire_protection"}].lvl
execute if data storage mechanization:temp {var:"minecraft:blast_protection"     } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute if data storage mechanization:temp {var:"minecraft:projectile_protection"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
execute if data storage mechanization:temp {var:"minecraft:thorns"               } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:thorns"}].lvl
execute if data storage mechanization:temp {var:"minecraft:binding_curse"        } if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set #current_level mechanization.data 2000000

execute if data storage mechanization:temp {var:"minecraft:respiration"     } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:respiration"}].lvl
execute if data storage mechanization:temp {var:"minecraft:aqua_affinity"   } if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:aqua_affinity"}] run scoreboard players set #current_level mechanization.data 2000000

execute if data storage mechanization:temp {var:"minecraft:feather_falling"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:feather_falling"}].lvl
execute if data storage mechanization:temp {var:"minecraft:depth_strider" } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:depth_strider"}].lvl
execute if data storage mechanization:temp {var:"minecraft:frost_walker"  } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:frost_walker"}].lvl
execute if data storage mechanization:temp {var:"minecraft:soul_speed"    } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:soul_speed"}].lvl

execute if data storage mechanization:temp {var:"minecraft:swift_sneak"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:swift_sneak"}].lvl

execute if data storage mechanization:temp {var:"minecraft:power"   } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:power"}].lvl
execute if data storage mechanization:temp {var:"minecraft:punch"   } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:punch"}].lvl
execute if data storage mechanization:temp {var:"minecraft:infinity"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:infinity"}] run scoreboard players set #current_level mechanization.data 2000000
execute if data storage mechanization:temp {var:"minecraft:flame"   } if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:flame"}] run scoreboard players set #current_level mechanization.data 2000000

execute if data storage mechanization:temp {var:"minecraft:multishot"   } if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:multishot"}] run scoreboard players set #current_level mechanization.data 2000000
execute if data storage mechanization:temp {var:"minecraft:piercing"    } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:multishot"}].lvl
execute if data storage mechanization:temp {var:"minecraft:quick_charge"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:piercing"}].lvl

execute if data storage mechanization:temp {var:"minecraft:sweeping"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:sweeping"}].lvl

execute if data storage mechanization:temp {var:"minecraft:impaling"  } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:impaling"}].lvl
execute if data storage mechanization:temp {var:"minecraft:riptide"   } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:riptide"}].lvl
execute if data storage mechanization:temp {var:"minecraft:loyalty"   } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:loyalty"}].lvl
execute if data storage mechanization:temp {var:"minecraft:channeling"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:channeling"}] run scoreboard players set #current_level mechanization.data 2000000

execute if data storage mechanization:temp {var:"minecraft:luck_of_the_sea"} store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl
execute if data storage mechanization:temp {var:"minecraft:lure"           } store result score #current_level mechanization.data run data get storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:lure"}].lvl
