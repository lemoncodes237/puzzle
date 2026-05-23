tag @a add in_sublevel
playsound block.beacon.activate master @a

execute if entity @e[type=item_display,tag=puz_start_diamond,distance=..1] run return run function puzzle:sublevel/setup {"type":"diamond"} 