#> asset:mob/40001.sheep_chan_of_revenge/tick/util/melt
#
# 溶ける
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# アニメーション
    execute as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/turn/tween {duration:7, to_frame:22}

# 音
    playsound entity.slime.death hostile @a ~ ~ ~ 2 0.75

# 無敵化
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/start_invulnerable
