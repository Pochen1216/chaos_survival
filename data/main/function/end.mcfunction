
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=sowin]","color":"green"},{"text":"\u7372\u5f97\u4e86\u6700\u7d42\u7684\u52dd\u5229!","color":"white"}]

title @a times 20 100 20
title @a title ["",{"selector":"@a[tag=sowin]","color":"green"},{"text":" Win!","color":"white"}]
execute as @a at @s run playsound minecraft:entity.allay.death

tag @e remove in_game
tag @a remove misson9
tag @a remove misson10
tag @a remove misson16
tag @a remove misson32
tag @a remove misson33
tag @a remove misson38
tag @a remove misson39
tag @a remove misson40
tag @a remove misson43
tag @a remove misson49
tag @a remove misson57
tag @a remove misson59
tag @a remove misson61
tag @a remove misson80
tag @a remove win
effect clear @a


tag @a remove e22_buyed
tag @a remove e22_p
tag @a remove e22_res



team remove 25

function main:system/sum_marker/stop


execute at @e[limit=1,tag=m_cen] run forceload remove ~ ~

#death_system
scoreboard players set @a d_cooldown 0

#admin
scoreboard players reset @a admin


#reset 

gamemode adventure @a
scoreboard objectives remove armor_value
execute as @a run attribute @s jump_strength base reset
execute as @a run attribute @s movement_speed base reset
execute as @a run attribute @s minecraft:max_health base reset
execute as @a run attribute @s minecraft:gravity base reset

schedule clear main:system/all_timer
schedule clear main:system/misson_go
schedule clear main:system/misson_countdown
schedule clear main:p_misson/tick

schedule clear main:misson/11_20/18/end
schedule clear main:misson/11_20/19/true_start
schedule clear main:misson/21_30/23/true_start
schedule clear main:misson/21_30/27/end
schedule clear main:misson/31_40/34/end
schedule clear main:misson/51_60/55/end


schedule clear main:system/clean_item

#--------------------------------------
#<混沌生存>
#作者: Poal
#特別銘謝: cloudy, 吐司, 金蠍, 16:9, 天狼星, 小黑, 幽幽
#感謝您的遊玩!
#--------------------------------------
#想再開一把的話，請先/function main:uninstall

tellraw @a ["",{"text":"--------------------------------------","color":"gray"},{"text":"\n"},{"text":"<\u6df7\u6c8c\u751f\u5b58>","underlined":true,"color":"gold"},{"text":"\n\u4f5c\u8005: "},{"text":"Poal","color":"green"},{"text":"\n\u7279\u5225\u9298\u8b1d:"},{"text":" cloudy, 大白, \u5410\u53f8, \u91d1\u880d, 16:9, \u5929\u72fc\u661f, \u5c0f\u9ed1, \u5e7d\u5e7d","color":"aqua"},{"text":"\n"},{"text":"\u611f\u8b1d\u60a8\u7684\u904a\u73a9!","color":"gold"},{"text":"\n"},{"text":"--------------------------------------","color":"gray"},{"text":"\n"},{"text":"\u60f3\u518d\u958b\u4e00\u628a\u7684\u8a71\uff0c\u8acb\u5148/function main:uninstall","color":"dark_gray"}]






#force_end
schedule clear main:misson/1_10/1/tick
schedule clear main:misson/1_10/2/tick
schedule clear main:misson/1_10/3/tick
schedule clear main:misson/1_10/4/tick
schedule clear main:misson/1_10/5/tick
schedule clear main:misson/1_10/6/tick
schedule clear main:misson/1_10/7/tick
schedule clear main:misson/1_10/8/tick
schedule clear main:misson/1_10/9/tick
schedule clear main:misson/1_10/10/tick

schedule clear main:misson/11_20/11/tick
schedule clear main:misson/11_20/12/tick
schedule clear main:misson/11_20/13/tick
schedule clear main:misson/11_20/14/tick
schedule clear main:misson/11_20/15/tick
schedule clear main:misson/11_20/16/tick
schedule clear main:misson/11_20/17/tick
schedule clear main:misson/11_20/18/tick
schedule clear main:misson/11_20/19/tick
schedule clear main:misson/11_20/20/tick

schedule clear main:misson/21_30/21/tick
schedule clear main:misson/21_30/22/tick
schedule clear main:misson/21_30/23/tick
schedule clear main:misson/21_30/24/tick
schedule clear main:misson/21_30/25/tick
schedule clear main:misson/21_30/26/tick
schedule clear main:misson/21_30/27/tick
schedule clear main:misson/21_30/28/tick
schedule clear main:misson/21_30/29/tick
schedule clear main:misson/21_30/30/tick

schedule clear main:misson/31_40/31/tick
schedule clear main:misson/31_40/32/tick
schedule clear main:misson/31_40/33/tick
schedule clear main:misson/31_40/34/tick
schedule clear main:misson/31_40/35/tick
schedule clear main:misson/31_40/36/tick
schedule clear main:misson/31_40/37/tick
schedule clear main:misson/31_40/38/tick
schedule clear main:misson/31_40/39/tick
schedule clear main:misson/31_40/40/tick

schedule clear main:misson/41_50/41/tick
schedule clear main:misson/41_50/42/tick
schedule clear main:misson/41_50/43/tick
schedule clear main:misson/41_50/44/tick
schedule clear main:misson/41_50/45/tick
schedule clear main:misson/41_50/46/tick
schedule clear main:misson/41_50/47/tick
schedule clear main:misson/41_50/48/tick
schedule clear main:misson/41_50/49/tick
schedule clear main:misson/41_50/50/tick

schedule clear main:misson/51_60/51/tick
schedule clear main:misson/51_60/52/tick
schedule clear main:misson/51_60/53/tick
schedule clear main:misson/51_60/54/tick
schedule clear main:misson/51_60/55/tick
schedule clear main:misson/51_60/56/tick
schedule clear main:misson/51_60/57/tick
schedule clear main:misson/51_60/58/tick
schedule clear main:misson/51_60/59/tick
schedule clear main:misson/51_60/60/tick

schedule clear main:misson/61_70/61/tick
schedule clear main:misson/61_70/62/tick
schedule clear main:misson/61_70/63/tick
schedule clear main:misson/61_70/64/tick
schedule clear main:misson/61_70/65/tick
schedule clear main:misson/61_70/66/tick
schedule clear main:misson/61_70/67/tick
schedule clear main:misson/61_70/68/tick
schedule clear main:misson/61_70/69/tick
schedule clear main:misson/61_70/70/tick

schedule clear main:misson/71_80/71/tick
schedule clear main:misson/71_80/72/tick
schedule clear main:misson/71_80/73/tick
schedule clear main:misson/71_80/74/tick
schedule clear main:misson/71_80/75/tick
schedule clear main:misson/71_80/76/tick
schedule clear main:misson/71_80/77/tick
schedule clear main:misson/71_80/78/tick
schedule clear main:misson/71_80/79/tick
schedule clear main:misson/71_80/80/tick

schedule clear main:misson/81_90/81/tick
schedule clear main:misson/81_90/82/tick
schedule clear main:misson/81_90/83/tick
schedule clear main:misson/81_90/84/tick
schedule clear main:misson/81_90/85/tick
schedule clear main:misson/81_90/86/tick
schedule clear main:misson/81_90/87/tick
schedule clear main:misson/81_90/88/tick
schedule clear main:misson/81_90/89/tick
schedule clear main:misson/81_90/90/tick

schedule clear main:misson/91_100/91/tick
schedule clear main:misson/91_100/92/tick
schedule clear main:misson/91_100/93/tick
schedule clear main:misson/91_100/94/tick
schedule clear main:misson/91_100/95/tick
schedule clear main:misson/91_100/96/tick
schedule clear main:misson/91_100/97/tick
schedule clear main:misson/91_100/98/tick
schedule clear main:misson/91_100/99/tick
schedule clear main:misson/91_100/100/tick









