

scoreboard players remove @a[tag=win] score 1




execute store result score @e[type=marker,limit=1,tag=m_cen] misson_num run random value 1..100

tag @e[tag=m_cen,type=minecraft:marker] remove doing_misson

#善後
kill @e[tag=misson,tag=!immute_misson_kill]



#timer
scoreboard players set @e[tag=m_cen,limit=1,type=marker] misson_countdown -1


#[系統]@a[tag=win]贏得了這回合!
execute if entity @a[tag=win] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute unless entity @a[tag=win] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"沒有人\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]

execute if entity @a[tag=win,team=red] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"紅隊",color:red},{"text":"因此獲得1分!"}]
execute if entity @a[tag=win,team=green] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"綠隊",color:green},{"text":"因此獲得1分!"}]
execute if entity @a[tag=win,team=blue] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"藍隊",color:aqua},{"text":"因此獲得1分!"}]
execute if entity @a[tag=win,team=orange] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"橘隊",color:gold},{"text":"因此獲得1分!"}]


execute if entity @a[tag=win,team=red] as @a[team=red] run scoreboard players add @s score 1
execute if entity @a[tag=win,team=blue] as @a[team=blue] run scoreboard players add @s score 1
execute if entity @a[tag=win,team=orange] as @a[team=orange] run scoreboard players add @s score 1
execute if entity @a[tag=win,team=green] as @a[team=green] run scoreboard players add @s score 1




#偵測結束
execute as @a[tag=win] if score @s score >= @e[tag=m_cen,limit=1,type=marker] target run tag @s add sowin

execute if entity @a[tag=sowin] run function main:end

execute if entity @a[tag=sowin] run return 0








#[系統]下一項任務將在10秒後開始!
tellraw @a {"text":"\n-------------------------------------\n","color":"gray"}
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4e0b\u4e00\u9805\u4efb\u52d9\u5c07\u572815\u79d2\u5f8c\u958b\u59cb!","color":"white"}]


execute if score @e[limit=1,type=marker,tag=m_cen] cm_target matches 1.. run schedule function main:system/cho_misson/start 1s



schedule function main:system/misson_countdown 15s




