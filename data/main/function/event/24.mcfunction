
title @a subtitle [{"text":"販售血液","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"開啟商店30秒，以血量上限購物，每人限購一次!","color":"white"}]


scoreboard objectives add buy trigger
scoreboard players set @a buy 0
scoreboard players enable @a[team=!spec] buy

#--------------------------------------
#1♥ -> 永久加速20% <購買>
#2.5♥ -> 鐵錠*64 <購買>
#5♥ -> 永久抗性2 <購買>
#9♥ -> 得分吸收器:每2次隨機任務勝利多加1分 <購買>
#--------------------------------------

tellraw @a [{"text":"--------------------------------------","color":"gray"},"\n",{"text":"1","color":"white"},{"text":"♥","color":"dark_red"},{"text":" -> 永久加速20% ","color":"white"},{"text":"<購買>","color":"light_purple","click_event":{"action":"run_command","command":"trigger buy set 1"}},"\n",{"text":"2.5","color":"white"},{"text":"♥","color":"dark_red"},{"text":" -> 鐵錠*64 ","color":"white"},{"text":"<購買>","color":"light_purple","click_event":{"action":"run_command","command":"trigger buy set 2"}},"\n",{"text":"5","color":"white"},{"text":"♥","color":"dark_red"},{"text":" -> 永久抗性2 ","color":"white"},{"text":"<購買>","color":"light_purple","click_event":{"action":"run_command","command":"trigger buy set 3"}},"\n",{"text":"9","color":"white"},{"text":"♥","color":"dark_red"},{"text":" -> 得分吸收器:每2次隨機任務勝利多加1分 ","color":"white"},{"text":"<購買>","color":"light_purple","click_event":{"action":"run_command","command":"trigger buy set 4"}},"\n",{"text":"--------------------------------------","color":"gray"}]
schedule function main:event/24/tick 1t
schedule function main:event/24/end 30s

