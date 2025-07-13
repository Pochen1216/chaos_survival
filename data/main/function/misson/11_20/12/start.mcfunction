#唉我草

title @a title [{"text":"唉我草","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]第一位拿到矮草的玩家加一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7b2c\u4e00\u4f4d\u62ff\u5230\u77ee\u8349\u7684\u73a9\u5bb6\u52a0\u4e00\u5206!","color":"white"},{"text":"\n "}]

scoreboard objectives add detect_grass dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/12/tick 1t








