
data modify storage mechanization:temp obj.converted_drive set from storage mechanization:temp obj.drive_contents

# merge items into list
data modify storage mechanization:temp obj.converted_drive[0] merge value {Slot: 0b}
data modify storage mechanization:temp obj.converted_drive[1] merge value {Slot: 1b}
data modify storage mechanization:temp obj.converted_drive[2] merge value {Slot: 2b}
data modify storage mechanization:temp obj.converted_drive[3] merge value {Slot: 3b}
data modify storage mechanization:temp obj.converted_drive[4] merge value {Slot: 4b}
data modify storage mechanization:temp obj.converted_drive[5] merge value {Slot: 5b}
data modify storage mechanization:temp obj.converted_drive[6] merge value {Slot: 6b}
data modify storage mechanization:temp obj.converted_drive[7] merge value {Slot: 7b}

data modify storage mechanization:temp obj.converted_drive[8] merge value {Slot: 9b}
data modify storage mechanization:temp obj.converted_drive[9] merge value {Slot: 10b}
data modify storage mechanization:temp obj.converted_drive[10] merge value {Slot: 11b}
data modify storage mechanization:temp obj.converted_drive[11] merge value {Slot: 12b}
data modify storage mechanization:temp obj.converted_drive[12] merge value {Slot: 13b}
data modify storage mechanization:temp obj.converted_drive[13] merge value {Slot: 14b}
data modify storage mechanization:temp obj.converted_drive[14] merge value {Slot: 15b}
data modify storage mechanization:temp obj.converted_drive[15] merge value {Slot: 16b}

data modify storage mechanization:temp obj.converted_drive[16] merge value {Slot: 18b}
data modify storage mechanization:temp obj.converted_drive[17] merge value {Slot: 19b}
data modify storage mechanization:temp obj.converted_drive[18] merge value {Slot: 20b}
data modify storage mechanization:temp obj.converted_drive[19] merge value {Slot: 21b}
data modify storage mechanization:temp obj.converted_drive[20] merge value {Slot: 22b}
data modify storage mechanization:temp obj.converted_drive[21] merge value {Slot: 23b}
data modify storage mechanization:temp obj.converted_drive[22] merge value {Slot: 24b}
data modify storage mechanization:temp obj.converted_drive[23] merge value {Slot: 25b}

# copy list to terminal
## minecraft:barrier is a sentinal value for an empty slot
data remove storage mechanization:temp obj.converted_drive[{id:"minecraft:barrier"}]
