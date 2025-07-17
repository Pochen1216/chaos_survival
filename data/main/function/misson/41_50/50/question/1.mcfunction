
#-------------------------------------------
#試問: 章魚有幾個心臟?
#[2] [3] [4]
#-------------------------------------------

tellraw @a [{"text":"-------------------------------------------","color":"gray"},"\n",{"text":"試問:","bold":true,"underlined":true},{"text":" ","bold":true},"章魚有幾個心臟?\n",{"text":"[2]","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"trigger respond set -1"}},{"text":" ","color":"gold"},{"text":"[3]","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"trigger respond set 1"}},{"text":" ","color":"gold"},{"text":"[4]","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"trigger respond set -1"}},"\n",{"text":"-------------------------------------------","color":"gray"}]