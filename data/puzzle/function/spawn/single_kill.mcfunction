execute as @e[type=slime,sort=nearest,distance=..2,limit=1,tag=puz_curr_block] at @s run tp @s ~ -500 ~
kill @e[type=marker,sort=nearest,distance=..2,limit=1,tag=puz_marker]
kill @e[type=interaction,sort=nearest,distance=..2,limit=1,tag=puz_move_block]

setblock ~ ~ ~ air