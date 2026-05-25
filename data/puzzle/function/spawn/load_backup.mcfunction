execute as @e[type=marker,tag=puz_marker,distance=..300] if score @s puz-level = #making-level puz-level at @s run function puzzle:spawn/single_kill

execute as @e[type=marker,tag=puz_backup,distance=..300] if score @s puz-level = #making-level puz-level at @s align xyz positioned ~ ~100 ~ run function puzzle:spawn/single_load


tag @a remove in_sublevel
tag @a remove sublevel_started
tag @a remove sublevel_ended

clear @a item_frame

tag @e[type=item_display,tag=puz_curr,distance=..100] remove puz_curr