

execute as @a[tag=waiting] if score @s m100_choice matches 1..2 run tellraw @a [{"text":"[系統]","color":"light_purple"},{selector:"@s"},{text:"已做出選擇!",color:white}]
execute as @a[tag=waiting] if score @s m100_choice matches 1..2 run tag @s remove waiting
execute unless entity @a[tag=waiting] run schedule function main:misson/91_100/100/next 19t

execute if score @e[tag=m_cen,limit=1,type=marker] misson_countdown matches ..5 run schedule function main:misson/91_100/100/next 1t

schedule function main:misson/91_100/100/tick 20t




