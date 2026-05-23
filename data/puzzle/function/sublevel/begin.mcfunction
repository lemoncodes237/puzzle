tag @a add in_sublevel
tag @a add sublevel_started
playsound block.beacon.activate master @a

execute if entity @e[type=item_display,tag=puz_start_diamond,distance=..1] run return run function puzzle:sublevel/setup {"type":"diamond","block":"diamond_block","block_name":"Block of Diamond"}