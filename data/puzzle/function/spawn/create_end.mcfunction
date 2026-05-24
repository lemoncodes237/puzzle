summon marker ~ ~ ~ {Tags:["puz_ender", "puz_ender_temp"]}
execute as @e[type=marker,tag=puz_ender_temp,distance=..0.1,limit=1] run scoreboard players operation @s puz-level = #making-level puz-level
tag @e[type=marker,tag=puz_ender_temp,distance=..0.1,limit=1] remove puz_ender_temp