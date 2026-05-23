$give @a item_frame[item_name="$(block_name)",item_model="minecraft:$(block)",entity_data={id:"item_frame",Invisible:1b,Tags:["puzzle_summon_$(type)","puzzle_summon"]}] 1
execute as @e[type=slime,sort=nearest,distance=..2,limit=1,tag=puz_curr_block] at @s run tp @s ~ -500 ~
kill @e[type=marker,sort=nearest,distance=..2,limit=1,tag=puz_marker]
kill @e[type=interaction,sort=nearest,distance=..2,limit=1,tag=puz_move_block]
setblock ~ ~ ~ air