scoreboard objectives add puz-time dummy

team add puzzle
team modify puzzle collisionRule never
team join puzzle @a

scoreboard objectives add puz-level dummy

data modify storage puzzle:blocks blocks set value [3,4]