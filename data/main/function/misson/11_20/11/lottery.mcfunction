#executed by who did the lottery

damage @s 6 generic_kill

execute store result score @s lottery run random value 1..5

tellraw @s[scores={lottery=1..2}] ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u9298\u8b1d\u60e0\u9867!","color":"white"},{"text":"\n"},{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u62bd\u734e\u6309\u9215 ->","color":"white"},{"text":"<\u71a0\u71a0\u751f\u8f1d\u7684\u62bd\u734e\u6309\u9215>","color":"gold","click_event":{"action":"run_command","command":"trigger lottery set 1"}}]
tellraw @s[scores={lottery=4..5}] ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u9298\u8b1d\u60e0\u9867!","color":"white"},{"text":"\n"},{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u62bd\u734e\u6309\u9215 ->","color":"white"},{"text":"<\u71a0\u71a0\u751f\u8f1d\u7684\u62bd\u734e\u6309\u9215>","color":"gold","click_event":{"action":"run_command","command":"trigger lottery set 1"}}]


execute as @s[scores={lottery=3}] run function main:misson/11_20/11/end
execute as @s[scores={lottery=3}] run return 0

#​[任務]銘謝惠顧!
#[任務]抽獎按鈕 -><熠熠生輝的抽獎按鈕>


