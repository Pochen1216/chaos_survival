
#execute as @e[type=marker,tag=cm_done] run tellraw @a {score:{name:"@s",objective:"cm_num"},color:gold}
scoreboard players set @e[limit=1,type=marker,tag=m_cen] cm_entity -1


scoreboard objectives add cm_choose trigger
scoreboard players set @a[tag=cm_pl] cm_choose 0
scoreboard players enable @a[tag=cm_pl] cm_choose


tellraw @a [{"text":"[系統] ","color":"gold"},{"selector":"@a[tag=cm_pl]",color:green},{"text":"獲得了選擇次任務的機會!","color":"white"}]
tellraw @a[tag=cm_pl] [{"text":"[系統]","color":"gold"},{"text":"由於你是目前最低分，獲得了選擇次任務的機會","color":"white"},"\n",{"text":"[系統]","color":"gold"},{"text":"將滑鼠放到標題上方可以查看內容，點擊以選擇","color":"white"},"\n",{"text":"[系統]","color":"gold"},{"text":"你有10秒的選擇時間，逾時將為隨機任務","color":"white"},"\n "]


tellraw @a[tag=cm_pl] "------------------------------"
execute as @e[tag=cm_done,type=marker] run function main:system/cho_misson/text
tellraw @a[tag=cm_pl] "------------------------------"

kill @e[type=marker,tag=cm_done]


schedule function main:system/cho_misson/tick 1t

#[系統]由於你是目前最低分，獲得了選擇次任務的機會
#[系統]將滑鼠放到標題上方可以查看內容，點擊以選擇
#[系統]你有10秒的選擇時間，逾時將為隨機任務

