
#scoreboard players set @e[tag=m_cen,limit=1,type=marker] misson_countdown -1

execute if entity @e[tag=m_cen,limit=1,type=marker,tag=!doing_misson] run advancement grant @a[tag=win] only main:hidden/so_fast

#say 1