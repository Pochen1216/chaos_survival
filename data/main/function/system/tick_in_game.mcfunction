
scoreboard players operation 目前時間 info = @e[tag=m_cen,limit=1] all_timer
scoreboard players operation 目標勝利次數 info = @e[tag=m_cen,limit=1] target

execute as @a[scores={deaths=1..}] run function main:system/death_penalty

#cut_clean
execute if entity @e[tag=m_cen,tag=cut_clean] run function main:system/cut_clean/tick


#倒數bossbar
execute if score @e[tag=m_cen,limit=1] misson_countdown matches 0.. store result bossbar minecraft:misson_timer value run scoreboard players get @e[tag=m_cen,limit=1] misson_countdown
execute if score @e[tag=m_cen,limit=1] misson_countdown matches 0.. run scoreboard players remove @e[tag=m_cen,limit=1] misson_countdown 1

