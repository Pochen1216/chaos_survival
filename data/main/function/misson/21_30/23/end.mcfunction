

gamerule naturalRegeneration true

execute at @e[tag=m_cen,limit=1] run fill ~ 155 ~ ~16 155 ~16 air

schedule clear main:misson/21_30/23/tick

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1


#​[任務]5秒後，將繼續原生存!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"5\u79d2\u5f8c\uff0c\u5c07\u7e7c\u7e8c\u539f\u751f\u5b58!","color":"white"}]

schedule function main:misson/21_30/23/true_end 5s


#function main:system/misson_end
#function main:system/misson_end

