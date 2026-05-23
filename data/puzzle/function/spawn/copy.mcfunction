execute if entity @s[tag=puz_block_diamond] align xyz run summon marker ~ ~-100 ~ {Tags:["puz_backup","puz_backup_temp","puz_backup_diamond"]}
execute if entity @s[tag=puz_block_emerald] align xyz run summon marker ~ ~-100 ~ {Tags:["puz_backup","puz_backup_temp","puz_backup_emerald"]}
execute if entity @s[tag=puz_block_iron] align xyz run summon marker ~ ~-100 ~ {Tags:["puz_backup","puz_backup_temp","puz_backup_iron"]}
execute if entity @s[tag=puz_block_gold] align xyz run summon marker ~ ~-100 ~ {Tags:["puz_backup","puz_backup_temp","puz_backup_gold"]}
execute if entity @s[tag=puz_block_lapis] align xyz run summon marker ~ ~-100 ~ {Tags:["puz_backup","puz_backup_temp","puz_backup_lapis"]}

execute align xyz positioned ~ ~-100 ~ as @e[type=marker,tag=puz_backup_temp,distance=..0.1,limit=1] run scoreboard players operation @s puz-level = #making-level puz-level
execute align xyz as @e[type=marker,tag=puz_backup_temp,distance=..0.1,limit=1] run tag @s remove puz_backup_temp