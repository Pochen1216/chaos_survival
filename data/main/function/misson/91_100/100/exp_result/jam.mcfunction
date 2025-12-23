

scoreboard players operation @s temp100 = @s m100_score
scoreboard players operation @s temp100 /= @e[tag=m_cen,limit=1,type=marker] m100_pl_count

tellraw @a [{"text":"[系統]","color":"light_purple"},{text:"一共探索到了 ",color:white},{score:{name:"@s",objective:m100_score},color:gold},{text:" 顆寶石，平分後每人可得",color:white},{score:{name:"@s",objective:temp100},color:gold},{text:"顆寶石",color:white}]

scoreboard players operation @a[team=100_g] m100_pl_jam += @s temp100
scoreboard players operation @s temp100 = @s m100_score


scoreboard players operation @s temp100 %= @e[tag=m_cen,limit=1,type=marker] m100_pl_count
scoreboard players operation @e[tag=m_cen,limit=1,type=marker] m100_legacy += @s temp100

tellraw @a [{"text":"[系統]","color":"light_purple"},{text:"同時，遺留的寶石來到了 ",color:white},{score:{name:"@e[tag=m_cen,limit=1,type=marker]",objective:m100_legacy},color:gold},{text:" 顆",color:white}]

tellraw @a [{"text":"[系統]","color":"light_purple"},{text:"請剩餘玩家在30秒內決定是否繼續探索",color:white}]

scoreboard players operation 被遺留 m100_pl_jam = @e[tag=m_cen,limit=1,type=marker] m100_legacy

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600


scoreboard players set @a m100_choice 0
scoreboard players enable @a[team=100_g] m100_choice
tellraw @a[team=100_g] [{text:"\n      "},{text:"[探索]",color:green,click_event:{action:"run_command",command:"trigger m100_choice set 1"}},{text:"     "},{text:"[返回]\n",color:red,click_event:{action:"run_command",command:"trigger m100_choice set 2"}}]

tag @a[team=100_g] add waiting
schedule function main:misson/91_100/100/tick 1t
