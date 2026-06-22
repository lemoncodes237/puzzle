execute if items entity @a container.* item_frame[custom_data~{puzzle_summon:1}] run return run title @a actionbar "All blocks must be placed before exiting a state"

execute as @a if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_swimming:0b,is_flying:0b}}} at @s positioned ~ ~1 ~ unless entity @s[dy=0.5] run return run title @a actionbar "You cannot exit a state while crawling"

# Block check again
scoreboard players set #check puz-level 0
execute as @e[type=marker,tag=puz_marker] if score @s puz-level = #making-level puz-level run scoreboard players add #check puz-level 1
execute store result storage puzzle:blocks curr int 1 run scoreboard players get #making-level puz-level
execute store result score #check puz-time run function puzzle:sublevel/check_placed with storage puzzle:blocks
execute if score #check puz-time matches 1 run return run title @a actionbar "All blocks must be placed before exiting a state"

tag @e[type=item_display,tag=puz_main,distance=..1] remove puz_curr

tag @a remove in_sublevel
tag @a add sublevel_ended
playsound block.beacon.deactivate master @a

execute as @e[type=slime,tag=puz_curr_block,distance=..100] at @s run tp @s ~ -500 ~
kill @e[type=interaction,tag=puz_move_block,distance=..100]