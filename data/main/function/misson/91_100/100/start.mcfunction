#印加寶藏

title @a title [{"text":"印加寶藏","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#活動結束時每1寶石可以兌換為1鑽石，寶石數量最高可得一分，僅進行一輪，探索失敗將受到災厄懲罰
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"活動結束時每1寶石可以兌換為1鑽石，寶石數量最高可得一分，僅進行一輪，探索失敗將受到災厄懲罰","color":"white"}]

tellraw @a ["",{"text":"[提示]","color":"gray"},{"text":"按TAB可以看到當前存活玩家","color":"white"}]

tellraw @a ["",{"text":"[系統]","color":"light_purple"},{"text":"將在10秒後 進行第一次探索......","color":"white"}]

scoreboard objectives add m100_id dummy
scoreboard objectives add m100_score dummy


execute as @e[limit=1,type=marker,tag=m_cen] at @s run function main:misson/91_100/100/summon
# -1:zombie
# -2:spider
# -3: lava
# -4: rock
# -5: skeleton

# 1 2 3 4 5 5 7 9
# 11 11 13 14 15 17

# 共30張


team add 100_g
team modify 100_g color green
team modify 100_g prefix {"text":"[探索中]"}
team add 100_r
team modify 100_r color red
team modify 100_r prefix {"text":"[已返程]"}

team join 100_g @a[team=!spec]


scoreboard objectives remove temp100
scoreboard objectives add m100_pl_jam dummy
scoreboard objectives add m100_legacy dummy
scoreboard objectives add m100_pl_count dummy
scoreboard objectives add temp100 dummy

scoreboard players set @a m100_pl_jam 0
scoreboard players set @e[tag=m_cen] m100_legacy 0

scoreboard objectives add m100_choice trigger

scoreboard objectives setdisplay sidebar m100_pl_jam
scoreboard objectives modify m100_pl_jam displayname {text:"玩家寶石數",color:white}

schedule function main:misson/91_100/100/exp 10s



