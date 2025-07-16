#阿有ㄉㄡˊ有ㄉㄡ

title @a title [{"text":"阿有ㄉㄡˊ有ㄉㄡ","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]率先吃下蜘蛛眼的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u5403\u4e0b\u8718\u86db\u773c\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]


scoreboard objectives add detect_seye minecraft.used:minecraft.spider_eye
scoreboard players set @a detect_seye 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/44/tick 5t








