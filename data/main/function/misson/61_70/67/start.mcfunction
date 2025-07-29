#出手時機
title @a title [{"text":"出手時機","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]你可以在任何時候按下按鈕得分，但是需要受到等同任務剩餘時間的死亡僵直!(先搶先贏)
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"你可以在任何時候按下按鈕得分，但是需要受到等同任務剩餘時間的死亡僵直!(先搶先贏)","color":"white"}]
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"本任務至多執行60秒","color":"white"}]

tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"停止計時並受到僵直 ->","color":"white"},{"text":"<點我>","color":light_purple,click_event:{action:"run_command",command:"trigger stop"}}]


scoreboard objectives add m67_stop trigger
scoreboard players set @a m67_stop 0
scoreboard players enable @a[team=!spec] m67_stop

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200


schedule function main:misson/61_70/67/tick 1t








