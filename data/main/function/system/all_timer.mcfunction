execute as @e[type=marker,tag=m_cen] run scoreboard players add @s all_timer 1
schedule function main:system/all_timer 60s
