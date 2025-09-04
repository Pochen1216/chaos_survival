#executed by pl



#目標數: +:11 -:12
execute if score @s settings matches 11 run function main:settings/add_target
execute if score @s settings matches 12 run function main:settings/minus_target

#cut_clean on:21 off:22
execute if score @s settings matches 21 run function main:settings/cc_on
execute if score @s settings matches 22 run function main:settings/cc_off


#event off:31 on:32~35
execute if score @s settings matches 31 run function main:settings/event_off
execute if score @s settings matches 32 run function main:settings/event_30
execute if score @s settings matches 33 run function main:settings/event_60
execute if score @s settings matches 34 run function main:settings/event_90
execute if score @s settings matches 35 run function main:settings/event_120


#cm: off:41 +:42 -: 43
execute if score @s settings matches 41 run function main:settings/cm_off
execute if score @s settings matches 42 run function main:settings/cm_add
execute if score @s settings matches 43 run function main:settings/cm_remove




#intro:50
execute if score @s settings matches 50 run tellraw @a ["",{"text":"--------------------------------------","color":"gray"},{"text":"\n"},{"text":"\u300c\u6df7\u6c8c\u751f\u5b58\u300d","color":"gold"},{"text":"\u662f\u4e00\u6b3e\u591a\u4eba\u751f\u5b58\u5c0d\u6230\u904a\u6232\n\u4f60\u5011\u9700\u8981"},{"text":"\u5728\u751f\u5b58\u7684\u540c\u6642\u5b8c\u6210\u5404\u7a2e\u795e\u5947\u7684\u4efb\u52d9","color":"green"},{"text":"\n\u6700\u5148\u9054\u5230\u76ee\u6a19\u5206\u6578(Tab\u53ef\u770b)\u7684\u4eba\u5c31\u7372\u5f97\u6700\u7d42\u52dd\u5229!\n\u540c\u6642\uff0c\u6df7\u6c8c\u751f\u5b58\u4e5f\u64c1\u6709\u5e38\u99d0\u4efb\u52d9\n\u6309\u4e0bL\u53ef\u67e5\u770b\u4efb\u52d9\uff0c\u4f9d\u7167\u96e3\u5ea6\u53ef\u5f971\u5206,2\u5206,3\u5206\n\u4f46\u662f"},{"text":"\u5fc5\u9808\u5148\u5b8c\u6210\u4e0a\u4f4d\u4efb\u52d9\u624d\u80fd\u5b8c\u6210\u66f4\u9ad8\u5206\u7684\u4efb\u52d9!","color":"green"},{"text":"\n\u4e26\u4e14\uff0c\u5373\u4f7f\u4f60\u5df2\u7d93\u900f\u904e\u5e38\u99d0\u4efb\u52d9\u9054\u5230\u76ee\u6a19\u5206\u6578\n\u4f60\u4ecd\u9808\u900f\u904e"},{"text":"\u6700\u5f8c\u7372\u5f97\u4e00\u6b21\u96a8\u6a5f\u4efb\u52d9\u7684\u52dd\u5229","color":"green"},{"text":"\u4f86\u7d50\u7b97\u6700\u7d42\u52dd\u5229!\n"},{"text":"--------------------------------------","color":"gray"}]

#start:150
execute if score @s settings matches 150 run function main:ready


#生成中心:1000
execute if score @s settings matches 1000 run function main:sum_center


#tellraw @a ["----------------------------\n目標分數: ",{"color":"gold","score":{"objective":"target","name":"@e[limit=1,tag=m_cen]"}}," ",{"text":"[+]","color":"green","click_event":{"action":"run_command","command":"/trigger settings set 11"}}," ",{"text":"[-]","color":"dark_red","click_event":{"action":"run_command","command":"/trigger settings set 12"}},"\n",{"text":"點我設定邊界大小","color":"dark_blue","underlined":true,"click_event":{"action":"suggest_command","command":"/worldborder set"},"hover_event":{"action":"show_text","command":"輸入你希望的邊界大小數字"}},"\n",{"text":"<開始遊戲>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},"\n----------------------------"]

tellraw @a ["",{"text":"----------------------------","color":"gray"},{"text":"\n"},{"text":"<\u9ede\u6211\u770b\u904a\u6232\u6559\u5b78>\n","color":"gold","click_event":{"action":"run_command","command":"trigger settings set 50"}},{"text":"\u76ee\u6a19\u5206\u6578: ","color":"white"},{"score":{"name":"@e[tag=m_cen,limit=1]","objective":"target"},"color":"gold"},{"text":" ","color":"gold"},{"text":"[+]","color":"green","click_event":{"action":"run_command","command":"/trigger settings set 11"}},{"text":" "},{"text":"[-]","color":"dark_red","click_event":{"action":"run_command","command":"trigger settings set 12"}},{"text":"\n\u7926\u7269\u514d\u71d2:"},{"text":" ","click_event":{"action":"run_command","command":"trigger settings set 21"}},{"text":"[\u958b]","color":"green","click_event":{"action":"run_command","command":"trigger settings set 21"}},{"text":" "},{"text":"[\u95dc]","color":"dark_red","click_event":{"action":"run_command","command":"trigger settings set 22"}},{"text":" \n"},"事件週期(秒): ",{"text":"[關]","color":"dark_red","click_event":{"action":"run_command","command":"trigger settings set 31"}}," ",{"text":"[30]","color":"gold","click_event":{"action":"run_command","command":"trigger settings set 32"}},{"text":" ","color":"gold"},{"text":"[60]","color":"gold","click_event":{"action":"run_command","command":"trigger settings set 33"}},{"text":" ","color":"gold"},{"text":"[90]","color":"gold","click_event":{"action":"run_command","command":"trigger settings set 34"}},{"text":" ","color":"gold"},{"text":"[120]","color":"gold","click_event":{"action":"run_command","command":"trigger settings set 35"}},{"text":" \n"},"最低分者可自選任務數量:",{"color":"gold","score":{"objective":"cm_target","name":"@e[limit=1,type=marker,tag=m_cen]"}}," ",{"text":"[關]","color":"dark_red","click_event":{"action":"run_command","command":"/trigger settings set 41"}},{"text":" ","color":"dark_red"},{"text":"[+]","color":"green","click_event":{"action":"run_command","command":"/trigger settings set 42"}},{"text":" ","color":"green"},{"text":"[-]","color":"red","click_event":{"action":"run_command","command":"/trigger settings set 43"}},{"text":"\n\n"},{"text":"<\u958b\u59cb\u904a\u6232>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},{"text":"\n"},{"text":"----------------------------","color":"gray"}]


#--------------------------------------
#「混沌生存」是一款多人生存對戰遊戲
#你們需要在生存的同時完成各種神奇的任務
#最先達到目標分數(Tab可看)的人就獲得最終勝利!
#同時，混沌生存也擁有常駐任務
#按下L可查看任務，依照難度可得1分,2分,3分
#但是必須先完成上位任務才能完成更高分的任務!
#並且，即使你已經透過常駐任務達到目標分數
#你仍須透過最後獲得一次隨機任務的勝利來結算最終勝利!
#-------------------------------------

