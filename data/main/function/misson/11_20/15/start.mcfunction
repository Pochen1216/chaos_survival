#有毒

title @a title [{"text":"有毒","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]包包裡被塞了某個不屬於你的東西，先將它扔掉的玩家獲得一分!
tellraw @a [{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5305\u5305\u88e1\u88ab\u585e\u4e86\u67d0\u500b\u4e0d\u5c6c\u65bc\u4f60\u7684\u6771\u897f\uff0c\u5148\u5c07\u5b83\u6254\u6389\u7684\u73a9\u5bb6\u7372\u5f97\u4e00\u5206!","color":"white"}]

scoreboard objectives add detect_pane dummy
give @a[team=!spec] light_gray_stained_glass_pane 1



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/15/tick 1t








