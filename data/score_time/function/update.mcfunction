data remove storage score_time:temp all

scoreboard objectives add score_time dummy

$data modify storage score_time:temp all.display_format set value $(display_format)

$scoreboard players operation #display_time score_time = $(player) $(objective)

scoreboard players set #ratio score_time 72000
execute if data storage score_time:temp all{display_format:[hours]} run function score_time:zzz
scoreboard players set #ratio score_time 1200
execute if data storage score_time:temp all{display_format:[minutes]} run function score_time:zzz
scoreboard players set #ratio score_time 20
execute if data storage score_time:temp all{display_format:[seconds]} run function score_time:zzz
scoreboard players set #ratio score_time 1
execute if data storage score_time:temp all{display_format:[ticks]} run function score_time:zzz

$scoreboard players display numberformat $(player) $(objective) fixed {storage:"score_time:temp",nbt:"all.final[]",interpret:true,separator:":"}

data remove storage score_time:temp all