#冰船競速

title @a title [{"text":"冰船競速","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先抵達終點按下按鈕的玩家得一分!

tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先抵達終點按下按鈕的玩家得一分!","color":"white"}]



scoreboard objectives add packour_num dummy
scoreboard players set @a packour_num 0


execute store result score @e[tag=m_cen] packour_num run random value 1..2


execute if score @e[tag=m_cen,limit=1] packour_num matches 1 as @a[team=!spec] at @s run place template main:94_1 ~-19 ~-2 ~-1
execute if score @e[tag=m_cen,limit=1] packour_num matches 2 as @a[team=!spec] at @s run place template main:94_2 ~-2 ~-1 ~-7

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/91_100/94/tick 1t


