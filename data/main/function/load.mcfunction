
scoreboard objectives add cen_x dummy
scoreboard objectives add cen_z dummy

scoreboard objectives add score dummy
scoreboard objectives add all_timer dummy
scoreboard objectives add misson_num dummy
scoreboard objectives add target dummy
scoreboard objectives add event_num dummy
scoreboard objectives add event_period dummy
scoreboard objectives add cm_target dummy

scoreboard objectives add info dummy

scoreboard objectives add deaths deathCount

scoreboard objectives add misson_countdown dummy

scoreboard objectives add settings trigger
scoreboard players set @a settings 0
scoreboard players enable @a settings

scoreboard objectives add admin trigger

#[混沌生存]指令包安裝成功!
tellraw @a ["",{"text":"[\u6df7\u6c8c\u751f\u5b58]","color":"gold",hover_event: {action:"show_text","value":{text:"v1.2.6"}}},{"text":"\u6307\u4ee4\u5305\u5b89\u88dd\u6210\u529f!","color":"white"}]



#[混沌生存]尚未偵測到地圖中心點，點這裡以生成
execute unless entity @e[tag=m_cen] run tellraw @a ["",{"text":"[\u6df7\u6c8c\u751f\u5b58]","color":"gold"},{"text":"\u5c1a\u672a\u5075\u6e2c\u5230\u5730\u5716\u4e2d\u5fc3\u9ede\uff0c\u9ede","color":"white"},{"text":"\u9019\u88e1","underlined":true,"color":"dark_blue","click_event":{"action":"run_command","command":"/trigger settings set 1000"}},{"text":"\u4ee5\u751f\u6210","color":"white"}]
# settings => 1000


#execute if entity @e[tag=m_cen,tag=!in_game] run tellraw @a ["----------------------------\n目標分數: ",{"color":"gold","score":{"objective":"target","name":"@e[limit=1,tag=m_cen]"}}," ",{"text":"[+]","color":"green","click_event":{"action":"run_command","command":"/trigger settings set 11"}}," ",{"text":"[-]","color":"dark_red","click_event":{"action":"run_command","command":"/trigger settings set 12"}},"\n",{"text":"點我設定邊界大小","color":"dark_blue","underlined":true,"click_event":{"action":"suggest_command","command":"/worldborder set"},"hover_event":{"action":"show_text","value":"輸入你希望的邊界大小數字"}},"\n",{"text":"<開始遊戲>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},"\n----------------------------"]


bossbar add misson_timer {"text":"任務倒數","color":"gold"}
bossbar set minecraft:misson_timer color yellow



