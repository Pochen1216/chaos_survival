
execute unless entity @e[type=marker,tag=m_cen,tag=red_p_misson_success3] if entity @a[team=red,advancements={main:p_misson/7=true}] if entity @a[team=red,advancements={main:p_misson/8=true}] if entity @a[team=red,advancements={main:p_misson/9=true}] run function main:p_misson/team_mode/red/success3

