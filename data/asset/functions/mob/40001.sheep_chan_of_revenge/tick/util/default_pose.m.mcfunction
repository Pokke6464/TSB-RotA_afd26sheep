#> asset:mob/40001.sheep_chan_of_revenge/tick/util/default_pose.m
#
# 通常ポーズ
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# アニメーション
    $execute as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/walk/tween {duration:$(duration), to_frame:200}
