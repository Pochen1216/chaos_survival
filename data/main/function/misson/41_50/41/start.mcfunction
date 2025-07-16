#跑酷時間

title @a title [{"text":"跑酷時間","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先觸發跑酷頂端的玩家得一分!

tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u89f8\u767c\u8dd1\u9177\u9802\u7aef\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]



scoreboard objectives add packour_num dummy
scoreboard players set @a packour_num 0


execute store result score @e[tag=m_cen] packour_num run random roll 1..3


execute if score @e[tag=m_cen,limit=1] packour_num matches 1 as @a at @s run place template main:41_1 ~-1 ~-1 ~-1
execute if score @e[tag=m_cen,limit=1] packour_num matches 2 as @a at @s run place template main:41_2 ~-1 ~-1 ~-2
execute if score @e[tag=m_cen,limit=1] packour_num matches 3 as @a at @s run place template main:41_3 ~-1 ~-8 ~-5

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/41/tick 1t


