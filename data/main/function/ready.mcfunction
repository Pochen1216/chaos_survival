

#[混沌生存]尚未偵測到地圖中心點，點這裡以生成
execute unless entity @e[tag=m_cen] run tellraw @a ["",{"text":"[\u6df7\u6c8c\u751f\u5b58]","color":"gold"},{"text":"\u5c1a\u672a\u5075\u6e2c\u5230\u5730\u5716\u4e2d\u5fc3\u9ede\uff0c\u9ede","color":"white"},{"text":"\u9019\u88e1","underlined":true,"color":"dark_blue","click_event":{"action":"run_command","command":"/trigger settings set 1000"}},{"text":"\u4ee5\u751f\u6210","color":"white"}]
execute unless entity @e[tag=m_cen] run return 0


#[系統]遊戲將在5秒後開始!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u904a\u6232\u5c07\u57285\u79d2\u5f8c\u958b\u59cb!","color":"white"}]

function main:countdown/5
