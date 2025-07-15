

execute store result score @s item_count run data get entity @s Inventory[0].count
execute unless score @s item_count matches 1 run return 0

execute store result score @s item_count run data get entity @s Inventory[1].count
execute unless score @s item_count matches 2 run return 0

execute store result score @s item_count run data get entity @s Inventory[2].count
execute unless score @s item_count matches 3 run return 0

execute store result score @s item_count run data get entity @s Inventory[3].count
execute unless score @s item_count matches 4 run return 0

execute store result score @s item_count run data get entity @s Inventory[4].count
execute unless score @s item_count matches 5 run return 0

execute store result score @s item_count run data get entity @s Inventory[5].count
execute unless score @s item_count matches 6 run return 0

execute store result score @s item_count run data get entity @s Inventory[6].count
execute unless score @s item_count matches 7 run return 0

execute store result score @s item_count run data get entity @s Inventory[7].count
execute unless score @s item_count matches 8 run return 0

execute store result score @s item_count run data get entity @s Inventory[8].count
execute unless score @s item_count matches 9 run return 0


tag @s add win
