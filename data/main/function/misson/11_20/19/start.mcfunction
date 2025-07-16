#打終界龍

title @a title [{"text":"打終界龍","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]5秒後，大家會被送去終界打50滴血的終界龍，撿到尾刀的人得一分!
#[特殊]此任務期間，死亡會重生在黑曜石平台且不會受到死亡懲罰
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"5\u79d2\u5f8c\uff0c\u5927\u5bb6\u6703\u88ab\u9001\u53bb\u7d42\u754c\u625350\u6ef4\u8840\u7684\u7d42\u754c\u9f8d\uff0c\u64bf\u5230\u5c3e\u5200\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u6b64\u4efb\u52d9\u671f\u9593\uff0c\u6b7b\u4ea1\u6703\u91cd\u751f\u5728\u9ed1\u66dc\u77f3\u5e73\u53f0\u4e14\u4e0d\u6703\u53d7\u5230\u6b7b\u4ea1\u61f2\u7f70","color":"white"}]
#​[特殊]此任務最長時長為180秒
tellraw @a ["",{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u6b64\u4efb\u52d9\u6700\u9577\u6642\u9577\u70ba180\u79d2","color":"white"}]


scoreboard players set @e[tag=m_cen] misson_countdown 100
bossbar set minecraft:misson_timer max 100

schedule function main:misson/11_20/19/true_start 5s

function main:system/sum_marker/start
