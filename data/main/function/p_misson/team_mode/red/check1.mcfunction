
execute unless entity @e[type=marker,tag=m_cen,tag=red_p_misson_success1] if entity @a[team=red,advancements={main:p_misson/1=true}] if entity @a[team=red,advancements={main:p_misson/2=true}] if entity @a[team=red,advancements={main:p_misson/3=true}] run function main:p_misson/team_mode/red/success1

