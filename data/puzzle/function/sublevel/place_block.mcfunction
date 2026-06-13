# Check for invalid placement
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=item_display,tag=puz_main,distance=..0.7] run return run function puzzle:sublevel/return_block with storage puzzle:sublevel

execute if entity @s[tag=puzzle_summon_diamond] run function puzzle:spawn/block/diamond_block
execute if entity @s[tag=puzzle_summon_emerald] run function puzzle:spawn/block/emerald_block
execute if entity @s[tag=puzzle_summon_gold] run function puzzle:spawn/block/gold_block
execute if entity @s[tag=puzzle_summon_iron] run function puzzle:spawn/block/iron_block
execute if entity @s[tag=puzzle_summon_lapis] run function puzzle:spawn/block/lapis_block

kill @s
execute align xyz run function puzzle:sublevel/create_block

execute as @e[type=marker,tag=puz_ender,tag=!puz_ended,distance=..5] if score @s puz-level = #making-level puz-level at @s run function puzzle:level/check_end