#抽獎時間

title @a title [{"text":"抽獎時間","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]花費3顆心即可抽獎，每次抽獎有20%獲得一分，同時結束任務
#[特殊]若在本任務期間死亡，則喪失抽獎權力
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u82b1\u8cbb3\u9846\u5fc3\u5373\u53ef\u62bd\u734e\uff0c\u6bcf\u6b21\u62bd\u734e\u670920%\u7372\u5f97\u4e00\u5206\uff0c\u540c\u6642\u7d50\u675f\u4efb\u52d9","color":"white"},{"text":"\n"},{"text":"[\u7279\u6b8a]","color":"light_purple"},{"text":"\u82e5\u5728\u672c\u4efb\u52d9\u671f\u9593\u6b7b\u4ea1\uff0c\u5247\u55aa\u5931\u62bd\u734e\u6b0a\u529b","color":"white"},{"text":"\n "}]


scoreboard objectives add lottery trigger

scoreboard objectives add die deathCount
scoreboard players set @a die 0

#[任務]抽獎按鈕 -><熠熠生輝的抽獎按鈕>
tellraw @a[team=!spec] ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u62bd\u734e\u6309\u9215 ->","color":"white"},{"text":"<\u71a0\u71a0\u751f\u8f1d\u7684\u62bd\u734e\u6309\u9215>","color":"gold","click_event":{"action":"run_command","command":"trigger lottery set 1"}}]

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/11/tick 1t



#advancement

scoreboard objectives add lottery_count dummy
scoreboard players set @a lottery_count 0
scoreboard objectives add H health
execute as @a run damage @s 0.0000001 generic_kill








