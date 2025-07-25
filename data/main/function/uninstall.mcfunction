

function main:end

advancement revoke @a from main:hidden/root
tag @a remove sowin
tag @a remove pl
team remove spec
kill @e[tag=m_cen]
kill @e[tag=a_cen]
kill @e[tag=tp]

bossbar remove minecraft:misson_timer

scoreboard objectives remove score
scoreboard objectives remove cen_x
scoreboard objectives remove cen_y
scoreboard objectives remove cen_z
scoreboard objectives remove settings
scoreboard objectives remove all_timer
scoreboard objectives remove misson_num
scoreboard objectives remove info
scoreboard objectives remove target
scoreboard objectives remove detect_apple
scoreboard objectives remove tp_number
scoreboard objectives remove misson_countdown
scoreboard objectives remove deaths
scoreboard objectives remove item_count
scoreboard objectives remove drink
scoreboard objectives remove health
scoreboard objectives remove lottery
scoreboard objectives remove die
scoreboard objectives remove detect_grass
scoreboard objectives remove detect_pane
scoreboard objectives remove detect_table
scoreboard objectives remove counter
scoreboard objectives remove armor_value
scoreboard objectives remove k_dragon
scoreboard objectives remove sneak_before
scoreboard objectives remove sneak_count
scoreboard objectives remove is_sneaking
scoreboard objectives remove human
scoreboard objectives remove bow_score
scoreboard objectives remove detect_potato
scoreboard objectives remove H
scoreboard objectives remove hot_potato
scoreboard objectives remove 25_tp
scoreboard objectives remove food
scoreboard objectives remove y
scoreboard objectives remove food_before
scoreboard objectives remove food_regen
scoreboard objectives remove temp5
scoreboard objectives remove break_nsword
scoreboard objectives remove lv_before
scoreboard objectives remove detect_circle
scoreboard objectives remove packour_num
scoreboard objectives remove lv_now
scoreboard objectives remove d_cooldown
scoreboard objectives remove break
scoreboard objectives remove point
scoreboard objectives remove break_gpickaxe
scoreboard objectives remove flying
scoreboard objectives remove detect_seye
scoreboard objectives remove event_num
scoreboard objectives remove ore_count
scoreboard objectives remove respond
scoreboard objectives remove be_hit_pl
scoreboard objectives remove hit_pl
scoreboard objectives remove temp2
scoreboard objectives remove event_period
scoreboard objectives remove event_countdown
scoreboard objectives remove item_age
scoreboard objectives remove temp3
scoreboard objectives remove if_Onground
scoreboard objectives remove admin
scoreboard objectives remove mined_ds
scoreboard objectives remove mined_stone
scoreboard objectives remove lottery_count
scoreboard objectives remove detect_obby
scoreboard objectives remove total
scoreboard objectives remove get_omen

scoreboard objectives remove buy


scoreboard objectives remove cc_copper
scoreboard objectives remove cc_gold
scoreboard objectives remove cc_iron


#p_misson

scoreboard objectives remove p_missonA
scoreboard objectives remove p_missonB
scoreboard objectives remove p_missonC
scoreboard objectives remove zombie_counter
scoreboard objectives remove zombie_counter2
scoreboard objectives remove rod_count
scoreboard objectives remove cry_obby_count
scoreboard objectives remove dia_armor_count


gamerule sendCommandFeedback true
gamerule doImmediateRespawn false


tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n[\u7cfb\u7d71]","color":"gold"},{"text":"\u5378\u8f09\u5b8c\u6210\uff0c\u518d\u6b21\u4f7f\u7528\u8acb\u6253/reload","color":"white"}]




