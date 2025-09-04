
execute if score @r[tag=cm_pl] cm_choose matches 1.. run scoreboard players operation @e[type=marker,limit=1,tag=m_cen] misson_num = @r[tag=cm_pl] cm_choose

execute if score @r[tag=cm_pl] cm_choose matches 1.. run tellraw @r[tag=cm_pl] [{"text":"[系統]","color":"gold"},{color:white,"text":"你已做出選擇，等待任務開始......"}]


execute unless score @r[tag=cm_pl] cm_choose matches 1.. run schedule function main:system/cho_misson/tick 5t


