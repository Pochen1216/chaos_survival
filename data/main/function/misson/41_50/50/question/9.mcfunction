#-------------------------------------------
#試問: Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch是世界上最長的村莊名稱，請問他在哪個國家？
#A:英國 B:荷蘭 C:瑞典


tellraw @a [{"text":"-------------------------------------------\n試問: Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch是世界上最長的村莊名稱，請問他在哪個國家？","color":"gray"},"\n",{"text":"[英國]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set 1"}},{"text":" ","color":"gold"},{"text":"[荷蘭]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},{"text":" ","color":"gold"},{"text":"[瑞典]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},"\n",{"text":"-------------------------------------------","color":"gray"}]
