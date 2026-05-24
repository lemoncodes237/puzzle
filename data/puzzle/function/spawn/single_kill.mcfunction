execute as @e[type=slime,sort=nearest,distance=..2,limit=1,tag=puz_curr_block] at @s run tp @s ~ -500 ~
kill @s
kill @e[type=interaction,sort=nearest,distance=..2,limit=1,tag=puz_move_block]

setblock ~ ~ ~ air