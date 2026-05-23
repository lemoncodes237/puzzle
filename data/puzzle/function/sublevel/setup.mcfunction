$execute as @e[type=marker,tag=puz_block_$(type),distance=..100] if score @s puz-level = @p puz-level at @s run function puzzle:sublevel/create_block
