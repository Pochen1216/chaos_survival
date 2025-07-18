#hot potato

title @a title [{"text":"hot potato","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]隨機一名玩家獲得Hot potato，1分鐘後持有的人會爆炸，並使其餘玩家獲得一分!
#[特殊]獲得Hot potato的玩家能力提升，並會獲得傳送到隨機玩家的能力! (有5秒CD)
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u96a8\u6a5f\u4e00\u540d\u73a9\u5bb6\u7372\u5f97Hot potato\uff0c1\u5206\u9418\u5f8c\u6301\u6709\u7684\u4eba\u6703\u7206\u70b8\uff0c\u4e26\u4f7f\u5176\u9918\u73a9\u5bb6\u7372\u5f97\u4e00\u5206!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u7372\u5f97","color":"white"},{"text":"Hot potato\u7684\u73a9\u5bb6\u80fd\u529b\u63d0\u5347\uff0c\u4e26\u6703\u7372\u5f97\u50b3\u9001\u5230\u96a8\u6a5f\u73a9\u5bb6\u7684\u80fd\u529b! (\u67095\u79d2CD)"}]






scoreboard objectives add detect_potato dummy
scoreboard players set @a detect_potato 0


scoreboard objectives add hit_pl dummy
scoreboard objectives add be_hit_pl dummy
scoreboard players set @a hit_pl 0
scoreboard players set @a be_hit_pl 0

scoreboard objectives add 25_tp trigger
scoreboard players reset @a 25_tp
scoreboard players set @a 25_tp 0

advancement revoke @a only main:misson/25/hit
advancement revoke @a only main:misson/25/be_hit

team add 25
team modify 25 color red
team modify 25 prefix {"text":"[IT]","color":"#f70000"}

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

scoreboard objectives add hot_potato dummy
scoreboard players set @a hot_potato 0
scoreboard players set @r[team=!spec] hot_potato 1

execute as @a[scores={hot_potato=1}] run function main:misson/21_30/25/pass

schedule function main:misson/21_30/25/tick 1t


