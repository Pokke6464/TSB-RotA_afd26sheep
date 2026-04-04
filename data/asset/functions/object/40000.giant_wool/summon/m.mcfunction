#> asset:object/40000.giant_wool/summon/m
#
# @input args:
#   Rotation : double @ 2
#
# @within function asset:object/40000.giant_wool/summon/

# 召喚する
    $summon minecraft:item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit","UV5.Object"],interpolation_duration:16,teleport_duration:1,item:{id:"white_wool",Count:1b},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
