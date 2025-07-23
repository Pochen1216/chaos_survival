


execute as @e[limit=1,tag=m_cen] store result score @e[type=marker,limit=1,tag=m_cen] misson_num run random value 1..60

#善後
kill @e[tag=misson]


#偵測結束
execute as @a[tag=win] if score @s score >= @e[tag=m_cen,limit=1] target run tag @s add sowin
execute if entity @a[tag=sowin] run function main:end
tag @a remove win
execute if entity @a[tag=sowin] run return 0




#[系統]下一項任務將在10秒後開始!
tellraw @a {"text":"\n-------------------------------------\n","color":"gray"}
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4e0b\u4e00\u9805\u4efb\u52d9\u5c07\u572810\u79d2\u5f8c\u958b\u59cb!","color":"white"}]




#timer
scoreboard players set @e[tag=m_cen,limit=1] misson_countdown -1

schedule function main:system/misson_countdown 10s




