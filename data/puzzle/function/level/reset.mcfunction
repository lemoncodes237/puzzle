scoreboard players enable @a reset
scoreboard players set @a reset 0

execute unless entity @s[tag=in_level] run return 0

function puzzle:spawn/load_backup

execute store result storage puzzle:reset level int 1 run scoreboard players get #making-level puz-level
function puzzle:level/play_reset with storage puzzle:reset