give @a written_book[written_book_content={pages:[[["\n\n\n\n\n\n\n\n\n\n\n\n        ",{"text":"<開始遊戲>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},"\n    "]]],title:"遊戲設定",author:Poal,generation:0}]



#execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:cobblestone"}}}]

execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:rotten_flesh",count:3}}}]


give @a written_book[written_book_content={pages:[[["\n\n",{"text":"目標獲勝次數:","color":"gray"},{"selector":"@e[tag=settings,tag=target_count]","color":"black"},"\n\n\n\n\n\n\n\n\n\n        ",{"text":"<開始遊戲>","color":"light_purple","click_event":{"action":"run_command","command":"/trigger settings set 150"}},"\n    "]]],title:"遊戲設定",author:Poal,generation:0}] 