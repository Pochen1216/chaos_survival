
effect give @a night_vision 10 0 true

execute as @a[scores={die=1..}] run gamemode spectator @s


#如果有贏家
scoreboard players set @e[tag=m_cen] human 0
execute as @a[gamemode=survival] run scoreboard players add @e[tag=m_cen] human 1


execute if entity @e[scores={human=..1}] run tag @a[scores={die=0}] add win
execute if entity @e[scores={human=..1}] run function main:misson/21_30/23/end
execute if entity @e[scores={human=..1}] run return 0

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/21_30/23/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/21_30/23/tick 5t

