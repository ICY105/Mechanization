
function du:player/inv/get_hotbar
data remove block -29999999 0 1601 Items[].tag{mss:{display:3b}}.display.Lore[0]
data remove block -29999999 0 1601 Items[].tag{mss:{display:2b}}.display.Lore
data remove block -29999999 0 1601 Items[].tag{mss:{display:1b}}.display
data remove block -29999999 0 1601 Items[].tag{mss:{display:0b}}
data remove block -29999999 0 1601 Items[].tag.mss
function du:player/inv/restore_hotbar

function du:player/inv/get_inv
data remove block -29999999 0 1601 Items[].tag{mss:{display:3b}}.display.Lore[0]
data remove block -29999999 0 1601 Items[].tag{mss:{display:2b}}.display.Lore
data remove block -29999999 0 1601 Items[].tag{mss:{display:1b}}.display
data remove block -29999999 0 1601 Items[].tag{mss:{display:0b}}
data remove block -29999999 0 1601 Items[].tag.mss
function du:player/inv/restore_inv
