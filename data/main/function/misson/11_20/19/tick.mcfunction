

attribute @e[type=ender_dragon,limit=1] max_health base set 50
kill @e[type=end_crystal]
data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 3

#predicate 19 means who is in end
execute as @a at @s unless predicate main:misson/19 at @e[tag=m_cen,limit=1] run tp @s ~ ~3 ~

#tp @s @e[tag=m_cen,limit=1]

#execute unless entity @e[type=ender_dragon] run scoreboard players set @e[tag=m_cen,limit=1] misson_countdown -1

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/11_20/19/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0

#如果有贏家
execute as @a[scores={k_dragon=1..}] run tag @s add win
execute if entity @a[scores={k_dragon=1..}] run function main:misson/11_20/19/end
execute if entity @a[scores={k_dragon=1..}] run return 0


schedule function main:misson/11_20/19/tick 40t


