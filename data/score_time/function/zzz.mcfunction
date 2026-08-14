scoreboard players operation #unit score_time = #display_time score_time

execute store result storage score_time:temp all.format_number int 1 run scoreboard players operation #unit score_time /= #ratio score_time

scoreboard players operation #subtract score_time = #unit score_time
scoreboard players operation #subtract score_time *= #ratio score_time
scoreboard players operation #display_time score_time -= #subtract score_time

data modify storage score_time:temp all.format_number set string storage score_time:temp all.format_number

execute if data storage score_time:temp all{format_number:"9"} run data modify storage score_time:temp all.format_number set value "09"
execute if data storage score_time:temp all{format_number:"8"} run data modify storage score_time:temp all.format_number set value "08"
execute if data storage score_time:temp all{format_number:"7"} run data modify storage score_time:temp all.format_number set value "07"
execute if data storage score_time:temp all{format_number:"6"} run data modify storage score_time:temp all.format_number set value "06"
execute if data storage score_time:temp all{format_number:"5"} run data modify storage score_time:temp all.format_number set value "05"
execute if data storage score_time:temp all{format_number:"4"} run data modify storage score_time:temp all.format_number set value "04"
execute if data storage score_time:temp all{format_number:"3"} run data modify storage score_time:temp all.format_number set value "03"
execute if data storage score_time:temp all{format_number:"2"} run data modify storage score_time:temp all.format_number set value "02"
execute if data storage score_time:temp all{format_number:"1"} run data modify storage score_time:temp all.format_number set value "01"
execute if data storage score_time:temp all{format_number:"0"} run data modify storage score_time:temp all.format_number set value "00"

data modify storage score_time:temp all.final append from storage score_time:temp all.format_number