#敬業不樂業

title @a title [{"text":"敬業不樂業","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先獲得一個鑽石鋤獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先獲得一個鑽石鋤獲勝!","color":"white"}]

scoreboard objectives add detect_hoe dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/71_80/73/tick 1t








