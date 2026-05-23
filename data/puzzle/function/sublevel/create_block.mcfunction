summon slime ~0.5 ~ ~0.5 {NoAI:1b,Invulnerable:1b,Team:"puzzle",Tags:["puz_curr_block","puz_block_temp"],Size:1}
execute positioned ~0.5 ~ ~0.5 run effect give @e[type=slime,tag=puz_block_temp,distance=..0.1,limit=1] invisibility infinite 0 true
execute positioned ~0.5 ~ ~0.5 run effect give @e[type=slime,tag=puz_block_temp,distance=..0.1,limit=1] glowing infinite 0 true
execute positioned ~0.5 ~ ~0.5 run tag @e[type=slime,tag=puz_block_temp,distance=..0.1,limit=1] remove puz_block_temp

summon interaction ~0.5 ~ ~0.5 {width:1.05,height:1.05,response:true,Tags:["puz_move_block"]}