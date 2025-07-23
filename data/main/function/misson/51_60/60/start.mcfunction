#CTM時間

title @a title [{"text":"CTM時間","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先收集5種以上異色羊毛的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先收集5種以上異色羊毛的人得一分!","color":"white"}]

scoreboard objectives add item_count dummy
scoreboard players set @a item_count 0
scoreboard objectives add total dummy
scoreboard players set @a item_count 0

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/51_60/60/tick 1t








