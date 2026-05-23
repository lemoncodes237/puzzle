execute align xyz run summon marker ~ ~ ~ {Tags:["puz_marker","puz_marker_temp","puz_block_emerald"]}
execute align xyz as @e[type=marker,tag=puz_marker_temp,distance=..0.1,limit=1] run scoreboard players operation @s puz-level = #making-level puz-level
execute align xyz as @e[type=marker,tag=puz_marker_temp,distance=..0.1,limit=1] run tag @s remove puz_marker_temp

execute align xyz run setblock ~ ~ ~ emerald_block