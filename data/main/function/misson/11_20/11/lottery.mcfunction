#executed by who did the lottery

#adv.
execute if score @s H matches ..6 run advancement grant @s only main:hidden/11_1





execute store result score @s lottery run random value 1..5
#adv.
advancement grant @s[scores={H=..6,lottery=3}] only main:hidden/11_3

damage @s 6.5 generic_kill

tellraw @s[scores={lottery=1..2}] ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u9298\u8b1d\u60e0\u9867!","color":"white"},{"text":"\n"},{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u62bd\u734e\u6309\u9215 ->","color":"white"},{"text":"<\u71a0\u71a0\u751f\u8f1d\u7684\u62bd\u734e\u6309\u9215>","color":"gold","click_event":{"action":"run_command","command":"trigger lottery set 1"}}]
tellraw @s[scores={lottery=4..5}] ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u9298\u8b1d\u60e0\u9867!","color":"white"},{"text":"\n"},{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u62bd\u734e\u6309\u9215 ->","color":"white"},{"text":"<\u71a0\u71a0\u751f\u8f1d\u7684\u62bd\u734e\u6309\u9215>","color":"gold","click_event":{"action":"run_command","command":"trigger lottery set 1"}}]


#adv.
scoreboard players add @s lottery_count 1
advancement grant @s[scores={lottery=3,lottery_count=1}] only main:hidden/11_2



execute as @s[scores={lottery=3}] run function main:misson/11_20/11/end
execute as @s[scores={lottery=3}] run return 0

#​[任務]銘謝惠顧!
#[任務]抽獎按鈕 -><熠熠生輝的抽獎按鈕>


