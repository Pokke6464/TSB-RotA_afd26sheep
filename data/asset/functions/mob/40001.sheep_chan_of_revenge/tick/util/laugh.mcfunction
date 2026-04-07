#> asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh
#
# 高笑い
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# アニメーション
    execute as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:2, to_frame:50}

# 音
    playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 1.25
