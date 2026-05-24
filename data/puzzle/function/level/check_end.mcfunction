execute unless block ~ ~ ~ diamond_block run return 0

# Level ended
tag @s add puz_ended
execute at @a run playsound entity.player.levelup master @a
execute store result storage puzzle:end level int 1 run scoreboard players get #making-level puz-level
function puzzle:level/play_end with storage puzzle:end