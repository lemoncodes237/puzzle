scoreboard players set #check-time puz-time 0
scoreboard players add #armor-check-time puz-time 1

execute at @a as @e[type=item_display,tag=puz_main,distance=..50] at @s run function puzzle:ambience

execute unless entity @a[tag=in_sublevel] as @a at @s if entity @e[type=item_display,tag=puz_main,distance=..1] run function puzzle:sublevel/begin