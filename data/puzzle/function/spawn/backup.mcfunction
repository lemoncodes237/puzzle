scoreboard players set #temp puz-level 0
execute as @e[type=marker,tag=puz_backup] if score @s puz-level = #making-level puz-level run scoreboard players add #temp puz-level 1

execute if score #temp puz-level matches 1.. run return run tellraw @s "Backup for this level already created."

execute as @e[type=marker,tag=puz_marker] if score @s puz-level = #making-level puz-level at @s run function puzzle:spawn/copy

tellraw @s "Backup Created"