scoreboard players enable @a quit
scoreboard players set @a quit 0

execute unless entity @s[tag=in_level] run return 0

tag @a remove in_level

function puzzle:spawn/load_backup

execute store result storage puzzle:quit level int 1 run scoreboard players get #making-level puz-level
function puzzle:level/play_quit with storage puzzle:quit