execute as @e[type=marker,tag=puz_marker] if score @s puz-level = #making-level puz-level at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=puz_marker] if score @s puz-level = #making-level puz-level run kill @s

execute as @e[tag=puz_sublevel,type=item_display] if score @s puz-level = #making-level puz-level at @s run kill @e[tag=puz_sublevel,limit=10,distance=..5,sort=nearest]