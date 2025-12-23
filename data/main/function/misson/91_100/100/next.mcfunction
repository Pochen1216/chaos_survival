

execute as @a[tag=waiting] run tellraw @a [{"text":"[系統]","color":"light_purple"},{text:"超時選擇，已為你選擇返回!",color:white}]
execute as @a[tag=waiting] run scoreboard players set @s m100_choice 2
tag @a remove waiting

team join 100_r @a[scores={m100_choice=2}]


execute if entity @a[team=100_g] run tellraw @a [{"text":"[系統]","color":"light_purple"},{selector:"@a[scores={m100_choice=1}]"},{text:"選擇繼續前進!",color:white}]
execute if entity @a[scores={m100_choice=2}] run tellraw @a [{"text":"\n[系統]","color":"light_purple"},{selector:"@a[scores={m100_choice=2}]"},{text:"選擇停止探索!",color:white}]



#scoreboard players operation @a[scores={m100_choice=2}] m100_pl_jam += @e[tag=m_cen,limit=1,type=marker] m100_legacy
scoreboard players operation @a[scores={m100_choice=2}] temp100 += @e[tag=m_cen,limit=1,type=marker] m100_legacy
execute store result score @e[tag=m_cen,limit=1,type=marker] temp100 run execute if entity @a[scores={m100_choice=2}]
# @e[tag=m_cen,limit=1,type=marker] temp100 = 平分玩家數
scoreboard players operation @a[scores={m100_choice=2}] temp100 /= @e[tag=m_cen,limit=1,type=marker] temp100
execute as @a[scores={m100_choice=2}] run scoreboard players operation @s m100_pl_jam += @s temp100
scoreboard players operation @e[tag=m_cen,limit=1,type=marker] m100_legacy %= @e[tag=m_cen,limit=1,type=marker] temp100

execute if entity @a[scores={m100_choice=2}] run tellraw @a [{"text":"\n[系統]","color":"light_purple"},{text:"他們平分路上的寶石，一人",color:white},{score:{name:"@r[scores={m100_choice=2}]",objective:temp100},color:gold},{text:"顆寶石，\n剩餘",color:white},{score:{name:"@e[tag=m_cen,limit=1,type=marker]",objective:m100_legacy},color:gold},{text:"顆寶石被遺留",color:white}]



execute unless entity @a[team=100_g] run tellraw @a [{"text":"[系統]","color":"light_purple"},{text:"所有玩家皆已返回，計算結果中......",color:white}]
execute if entity @a[team=100_g] run tellraw @a [{"text":"[系統]","color":"light_purple"},{text:"將在5秒後 繼續下一次探索!",color:white}]

schedule clear main:misson/91_100/100/tick
execute unless entity @a[team=100_g] run schedule function main:misson/91_100/100/end 100t

execute if entity @a[team=100_g] run schedule function main:misson/91_100/100/exp 100t

scoreboard players reset @a m100_choice

