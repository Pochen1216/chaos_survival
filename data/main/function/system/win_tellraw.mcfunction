
#[系統]@a[tag=win]贏得了這回合!
execute if entity @a[tag=win] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"selector":"@a[tag=win]","color":"green"},{"text":"\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]
execute unless entity @a[tag=win] run tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"沒有人\u8d0f\u5f97\u4e86\u9019\u56de\u5408!","color":"white"}]



