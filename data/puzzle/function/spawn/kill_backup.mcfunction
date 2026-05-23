execute as @e[type=marker,tag=puz_backup] if score @s puz-level = #making-level puz-level run kill @s

tellraw @s "Backup killed"