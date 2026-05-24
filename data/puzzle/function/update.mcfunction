scoreboard players set #check-time puz-time 0

effect give @a night_vision infinite 0 true
effect give @a speed infinite 0 true

scoreboard players operation #making-level puz-level = @p puz-level

execute at @a as @e[type=item_display,tag=puz_main,distance=..50] at @s run function puzzle:ambience

execute unless entity @a[tag=in_sublevel] unless entity @a[tag=creating] unless entity @a[tag=sublevel_ended] as @a at @s if entity @e[type=item_display,tag=puz_main,distance=..1] run function puzzle:sublevel/begin
execute if entity @a[tag=in_sublevel,tag=!sublevel_started] as @a at @s if entity @e[type=item_display,tag=puz_main,distance=..1,tag=puz_curr] run function puzzle:sublevel/end
execute if entity @a[tag=in_sublevel,tag=!sublevel_started] as @a at @s if entity @e[type=item_display,tag=puz_main,distance=..1,tag=!puz_curr] run title @s actionbar "You cannot enter a new state before exiting your current one" 

execute as @a[tag=sublevel_started] at @s unless entity @e[type=item_display,tag=puz_main,distance=..1] run tag @a remove sublevel_started
execute as @a[tag=sublevel_ended] at @s unless entity @e[type=item_display,tag=puz_main,distance=..1] run tag @a remove sublevel_ended

execute at @a as @e[type=interaction,tag=puz_move_block,distance=..10] at @s on target run function puzzle:sublevel/take_block with storage puzzle:sublevel
execute at @a as @e[type=interaction,tag=puz_move_block,distance=..10] run data remove entity @s interaction

execute at @a as @e[type=item_frame,tag=puzzle_summon,distance=..10] at @s run function puzzle:sublevel/place_block