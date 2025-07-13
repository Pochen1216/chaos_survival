#executed by pl



#目標數: +:11 -:12
execute if score @s settings matches 11 run function main:settings/add_target
execute if score @s settings matches 12 run function main:settings/minus_target

#cut_clean on:21 off:22
execute if score @s settings matches 21 run function main:settings/cc_on
execute if score @s settings matches 22 run function main:settings/cc_off

#start:150
execute if score @s settings matches 150 run function main:ready


#生成中心
execute if score @s settings matches 1000 run function main:sum_center


#tellraw @a ["----------------------------\n目標分數: ",{"color":"gold","score":{"objective":"target","name":"@e[limit=1,tag=m_cen]"}}," ",{"text":"[+]","color":"green","click_event":{"action":"run_command","command":"/trigger settings set 11"}}," ",{"text":"[-]","color":"dark_red","click_event":{"action":"run_command","command":"/trigger settings set 12"}},"\n",{"text":"點我設定邊界大小","color":"dark_blue","underlined":true,"click_event":{"action":"suggest_command","command":"/worldborder set"},"hover_event":{"action":"show_text","command":"輸入你希望的邊界大小數字"}},"\n",{"text":"<開始遊戲>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},"\n----------------------------"]

tellraw @a ["",{"text":"----------------------------","color":"gray"},{"text":"\n"},{"text":"\u76ee\u6a19\u5206\u6578: ","color":"white"},{"score":{"name":"@e[tag=m_cen,limit=1]","objective":"target"},"color":"gold"},{"text":" ","color":"gold"},{"text":"[+]","color":"green","click_event":{"action":"run_command","command":"/trigger settings set 11"}},{"text":" "},{"text":"[-]","color":"dark_red","click_event":{"action":"run_command","command":"trigger settings set 12"}},{"text":"\n\u7926\u7269\u514d\u71d2:"},{"text":" ","click_event":{"action":"run_command","command":"trigger settings set 21"}},{"text":"[\u958b]","color":"green","click_event":{"action":"run_command","command":"trigger settings set 21"}},{"text":" "},{"text":"[\u95dc]","color":"dark_red","click_event":{"action":"run_command","command":"trigger settings set 22"}},{"text":" \n"},{"text":"\n"},{"text":"<\u958b\u59cb\u904a\u6232>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},{"text":"\n"},{"text":"----------------------------","color":"gray"}]

