


execute store result score @e[type=marker,limit=1,tag=m_cen] misson_num run random value 1..80

#善後
kill @e[tag=misson]

#e22:point

scoreboard players add @a[tag=win,tag=e22_p] e22_add 1

#[得分吸收器]@s觸發得分吸收器，額外獲得1分!
execute as @a[tag=win,tag=e22_p,scores={e22_add=2}] run tellraw @a ["",{"text":"[\u5f97\u5206\u5438\u6536\u5668]","color":"gold"},{"selector":"@s","color":"dark_green"},{"text":"觸發\u5f97\u5206\u5438\u6536\u5668\uff0c\u984d\u5916\u7372\u5f971\u5206!","color":"white"}]
execute as @a[tag=win,tag=e22_p,scores={e22_add=2}] run scoreboard players add @s score 1
execute as @a[tag=win,tag=e22_p,scores={e22_add=2}] run scoreboard players add @s e22_ach 1
execute as @a[tag=win,tag=e22_p,scores={e22_add=2}] run advancement grant @s[scores={e22_ach=5..}] only main:hidden/e22
execute as @a[tag=win,tag=e22_p,scores={e22_add=2}] run scoreboard players set @s e22_add 0



#偵測結束
execute as @a[tag=win] if score @s score >= @e[tag=m_cen,limit=1,type=marker] target run tag @s add sowin
execute if entity @a[tag=sowin] run function main:end
tag @a remove win
execute if entity @a[tag=sowin] run return 0




#[系統]下一項任務將在10秒後開始!
tellraw @a {"text":"\n-------------------------------------\n","color":"gray"}
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4e0b\u4e00\u9805\u4efb\u52d9\u5c07\u572810\u79d2\u5f8c\u958b\u59cb!","color":"white"}]




#timer
scoreboard players set @e[tag=m_cen,limit=1,type=marker] misson_countdown -1

schedule function main:system/misson_countdown 10s




