

gamerule naturalRegeneration true

execute at @e[tag=m_cen,limit=1] run fill ~ 155 ~ ~16 155 ~16 air



#[系統]@a[tag=win]贏得了這回合!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


#​[任務]5秒後，將繼續原生存!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"5\u79d2\u5f8c\uff0c\u5c07\u7e7c\u7e8c\u539f\u751f\u5b58!","color":"white"}]

scoreboard players set @e[tag=m_cen] misson_countdown 100
bossbar set minecraft:misson_timer max 100
schedule function main:misson/21_30/23/true_end 5s


#function main:system/misson_end
#function main:system/misson_end

