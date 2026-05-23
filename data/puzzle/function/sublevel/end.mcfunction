execute if items entity @a container.* item_frame[custom_data~{puzzle_summon:1}] run return run title @a actionbar "You must use blocks in your inventory before exiting"

tag @e[type=item_display,tag=puz_main,distance=..1] remove puz_curr

tag @a remove in_sublevel
tag @a add sublevel_ended
playsound block.beacon.deactivate master @a

execute as @e[type=slime,tag=puz_curr_block,distance=..100] at @s run tp @s ~ -500 ~
kill @e[type=interaction,tag=puz_move_block,distance=..100]