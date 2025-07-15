#收稅時間

title @a title [{"text":"收稅時間","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]將礦物置於副手上繳，繳交礦物點數最高的可得一分!
#[任務] 煤炭,銅,紅石 -> 1點 青金石 -> 2點  鐵,金 -> 5點 鑽石 -> 30點
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5c07\u7926\u7269\u7f6e\u65bc\u526f\u624b\u4e0a\u7e73\uff0c\u7e73\u4ea4\u7926\u7269\u9ede\u6578\u6700\u9ad8\u7684\u53ef\u5f97\u4e00\u5206!","color":"white"},{"text":"\n"},{"text":"[\u4efb\u52d9] ","color":"aqua"},{"text":"\u7164\u70ad","color":"black"},{"text":",","color":"yellow"},{"text":"\u9285","color":"gold"},{"text":",","color":"white"},{"text":"\u7d05\u77f3","color":"dark_red"},{"text":" ->","color":"white"},{"text":" 1\u9ede ","color":"green"},{"text":"\u9752\u91d1\u77f3","color":"dark_blue"},{"text":" ->","color":"white"},{"text":" 2\u9ede  ","color":"green"},{"text":"\u9435","color":"gray"},{"text":",","color":"white"},{"text":"\u91d1 ","color":"yellow"},{"text":"->","color":"white"},{"text":" 5\u9ede ","color":"green"},{"text":"\u947d\u77f3","color":"aqua"},{"text":" ->","color":"white"},{"text":" 30\u9ede","color":"green"}]



scoreboard objectives add point dummy
scoreboard players set @a point 0

scoreboard objectives add ore_count dummy
scoreboard players set @a ore_count 0

scoreboard objectives add temp5 dummy
scoreboard players set @a temp5 0
scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/35/tick 1t








