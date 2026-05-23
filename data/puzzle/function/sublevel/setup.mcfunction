$execute as @e[type=marker,tag=puz_block_$(type),distance=..100] if score @s puz-level = @p puz-level at @s run function puzzle:sublevel/create_block

$data modify storage puzzle:sublevel type set value "$(type)"
$data modify storage puzzle:sublevel block set value "$(block)"
$data modify storage puzzle:sublevel block_name set value "$(block_name)"