#獲得蘋果

title @a title [{"text":"獲得蘋果","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先獲得一顆蘋果獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u7372\u5f97\u4e00\u9846\u860b\u679c\u7372\u52dd!","color":"white"}]

scoreboard objectives add detect_apple dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/1_10/1/tick 1t








