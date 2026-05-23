# TODO: ADD CHECK FOR BLOCK IN INVENTORY

tag @a remove in_sublevel
tag @a add sublevel_ended
playsound block.beacon.deactivate master @a

execute as @e[type=slime,tag=puz_curr_block,distance=..100] at @s run tp @s ~ -500 ~
kill @e[type=interaction,tag=puz_move_block,distance=..100]