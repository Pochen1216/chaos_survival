#-------------------------------------------
#試問: 重音テト的性別是什麼?
#A:奇美拉 B:鑽頭 C:法國麵包


tellraw @a [{"text":"-------------------------------------------\n試問: 重音テト的性別是什麼?","color":"gray"},"\n",{"text":"[奇美拉]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set 1"}},{"text":" ","color":"gold"},{"text":"[鑽頭]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},{"text":" ","color":"gold"},{"text":"[法國麵包]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},"\n",{"text":"-------------------------------------------","color":"gray"}]
