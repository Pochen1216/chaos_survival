

tp @s @r[scores={hot_potato=0}]

#​[任務]你已被擁有HOT POTATO的人傳送!
tellraw @p[scores={hot_potato=0}] ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u4f60\u5df2\u88ab\u64c1\u6709","color":"white"},{"text":"HOT POTATO","color":"dark_red"},{"text":"\u7684\u4eba\u50b3\u9001!","color":"white"}]

effect give @s weakness 3 255 true
effect give @s blindness 3 0 true
effect give @s slowness 3 252 true

#​[任務]技能-傳送到隨機玩家 -> <使用>
tellraw @s ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6280\u80fd-\u50b3\u9001\u5230\u96a8\u6a5f\u73a9\u5bb6 -> ","color":"white"},{"text":"<\u4f7f\u7528>","color":"light_purple","click_event":{"action":"run_command","command":"trigger 25_tp set 101"}}]


