tag @a add in_sublevel
tag @a add sublevel_started
playsound block.beacon.activate master @a

tag @e[type=item_display,tag=puz_main,distance=..1] add puz_curr

execute if entity @e[type=item_display,tag=puz_start_diamond,distance=..1] run return run function puzzle:sublevel/setup {"type":"diamond","block":"diamond_block","block_name":"Block of Diamond"}
execute if entity @e[type=item_display,tag=puz_start_emerald,distance=..1] run return run function puzzle:sublevel/setup {"type":"emerald","block":"emerald_block","block_name":"Block of Emerald"}
execute if entity @e[type=item_display,tag=puz_start_iron,distance=..1] run return run function puzzle:sublevel/setup {"type":"iron","block":"iron_block","block_name":"Block of Iron"}
execute if entity @e[type=item_display,tag=puz_start_gold,distance=..1] run return run function puzzle:sublevel/setup {"type":"gold","block":"gold_block","block_name":"Block of Gold"}
execute if entity @e[type=item_display,tag=puz_start_lapis,distance=..1] run return run function puzzle:sublevel/setup {"type":"lapis","block":"lapis_block","block_name":"Block of Lapis"}