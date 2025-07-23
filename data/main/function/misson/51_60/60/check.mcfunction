

scoreboard players set @s total 0

execute store success score @s item_count run clear @s white_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s light_gray_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s gray_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s black_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s brown_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s red_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s orange_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s yellow_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s lime_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s green_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s cyan_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s light_blue_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s blue_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s purple_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s magenta_wool 0
scoreboard players operation @s total += @s item_count
execute store success score @s item_count run clear @s pink_wool 0
scoreboard players operation @s total += @s item_count

execute if score @s total matches ..4 run return 0


tag @s add win
