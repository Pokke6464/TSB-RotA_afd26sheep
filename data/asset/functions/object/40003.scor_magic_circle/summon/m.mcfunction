#> asset:object/40003.scor_magic_circle/summon/m
#
# @input args:
#   Rotation : double @ 2
#
# @within function asset:object/40003.scor_magic_circle/summon/

# 召喚する
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit","UV5.Object"],brightness:{sky:15,block:15},interpolation_duration:20,teleport_duration:1,item:{id:"leather_horse_armor",Count:1b,tag:{CustomModelData:81000,display:{color:$(Color)}}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}
