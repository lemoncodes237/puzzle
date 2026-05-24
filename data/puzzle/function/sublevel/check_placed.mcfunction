$execute store result score #correct puz-level run data get storage puzzle:blocks blocks[$(curr)]
execute if score #correct puz-level = #check puz-level run return 0
return 1