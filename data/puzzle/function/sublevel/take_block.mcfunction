$give @a item_frame[item_name="$(block_name)",custom_data={puzzle_summon:1},item_model="minecraft:$(block)",entity_data={id:"item_frame",Invisible:1b,Tags:["puzzle_summon_$(type)","puzzle_summon"]},can_place_on=[{blocks:"#puzzle:placeable"}]] 1
execute as @e[type=slime,sort=nearest,distance=..0.5,limit=1,tag=puz_curr_block] at @s run tp @s ~ -500 ~
execute align xyz run kill @e[type=marker,sort=nearest,distance=..0.5,limit=1,tag=puz_marker]
kill @s
setblock ~ ~ ~ air