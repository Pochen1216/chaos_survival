




execute store result bossbar b_m96 value run data get entity @e[limit=1,type=shulker,tag=m96,sort=nearest] Health
execute as @e[type=marker,limit=1,tag=m96,sort=nearest] at @s run tp @e[limit=1,type=shulker,tag=m96,sort=nearest] ~2 ~2 ~2
execute as @e[type=marker,limit=1,tag=m96,sort=nearest] at @s run setblock ~2 ~2 ~2 air

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 at @e[type=marker,limit=1,tag=m96,sort=nearest] run summon tnt ~2 ~1 ~2 {explosion_power:10f}
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/91_100/96/launch
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run schedule function main:misson/91_100/96/launch 10t
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/91_100/96/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0



schedule function main:misson/91_100/96/tick 2t

