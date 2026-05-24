execute unless block ~ ~ ~ diamond_block run return 0

# Level ended
tag @s add puz_ended
execute at @a run playsound entity.player.levelup master @a

tag @a remove in_sublevel
tag @a remove sublevel_started
tag @a remove sublevel_ended
tag @e[type=item_display,tag=puz_curr,distance=..100] remove puz_curr
execute as @e[type=slime,tag=puz_curr_block,distance=..100] at @s run tp @s ~ -500 ~
kill @e[type=interaction,tag=puz_move_block,distance=..100]

execute store result storage puzzle:end level int 1 run scoreboard players get #making-level puz-level
function puzzle:level/play_end with storage puzzle:end