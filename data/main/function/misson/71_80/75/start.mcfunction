#早上一瓶，晚上一瓶

title @a title [{"text":"早上一瓶，晚上一瓶","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]先喝下牛奶者得一分，並切換晝夜
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"先喝下牛奶者得一分，並切換晝夜","color":"white"}]

scoreboard objectives add milk minecraft.used:milk_bucket
scoreboard players set @a milk 0

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/71_80/75/tick 1t








