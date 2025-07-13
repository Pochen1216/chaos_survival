#executed by who got the potato



scoreboard players operation @s hot_potato >< @a[scores={hot_potato=1,hit_pl=1},limit=1,sort=nearest] hot_potato

#​[任務]@s獲得Hot potato!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"selector":"@s","color":"dark_green"},{"text":"\u7372\u5f97Hot potato!","color":"white"}]

#​[任務]技能-傳送到隨機玩家 -> <使用>
tellraw @s ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6280\u80fd-\u50b3\u9001\u5230\u96a8\u6a5f\u73a9\u5bb6 -> ","color":"white"},{"text":"<\u4f7f\u7528>","color":"light_purple","click_event":{"action":"run_command","command":"trigger 25_tp set 101"}}]
