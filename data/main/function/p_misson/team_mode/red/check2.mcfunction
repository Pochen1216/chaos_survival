
execute unless entity @e[type=marker,tag=m_cen,tag=red_p_misson_success2] if entity @a[team=red,advancements={main:p_misson/4=true}] if entity @a[team=red,advancements={main:p_misson/5=true}] if entity @a[team=red,advancements={main:p_misson/6=true}] run function main:p_misson/team_mode/red/success2

