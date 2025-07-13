
scoreboard objectives remove tp_number
execute as @e[type=marker,tag=tp] at @s run forceload remove ~ ~
execute as @e[type=marker,tag=m_cen] at @s run forceload add ~ ~
kill @e[type=marker,tag=tp]
tag @e remove tp


