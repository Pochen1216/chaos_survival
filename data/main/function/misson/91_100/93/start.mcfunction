#種族平等

title @a title [{"text":"種族平等","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"生成若干黑羊與白羊，30秒後身邊30格黑白羊數量剛好者得一分!","color":"white"}]


scoreboard objectives add bsheep dummy
scoreboard objectives add wsheep dummy

execute as @a store result score @s bsheep run random value 1..10
execute as @a store result score @s wsheep run random value 1..10

execute as @a[team=!spec] at @s run function main:misson/91_100/93/sumb
execute as @a[team=!spec] at @s run function main:misson/91_100/93/sumw


scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/91_100/93/tick 1t








