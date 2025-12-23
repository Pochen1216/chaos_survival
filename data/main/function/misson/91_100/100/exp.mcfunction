
tellraw @a ["",{"text":"[系統]","color":"light_purple"},{"text":"開始探索!","color":"white"}]

scoreboard players set @e[limit=1,type=marker,tag=m_cen] m100_pl_count 0
execute store result score @e[limit=1,type=marker,tag=m_cen] m100_pl_count run execute if entity @a[team=100_g]


execute as @e[limit=1,sort=random,type=marker,tag=m100] run function main:misson/91_100/100/exp_result/check







