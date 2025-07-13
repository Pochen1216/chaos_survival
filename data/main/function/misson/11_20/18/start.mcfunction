#衣著得體

title @a title [{"text":"衣著得體","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]30秒後，盔甲值最高的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"30\u79d2\u5f8c\uff0c\u76d4\u7532\u503c\u6700\u9ad8\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]


scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/11_20/18/end 30s


