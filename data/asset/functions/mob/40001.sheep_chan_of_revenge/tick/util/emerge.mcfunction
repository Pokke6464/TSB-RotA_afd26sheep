#> asset:mob/40001.sheep_chan_of_revenge/tick/util/emerge
#
# 融解状態からの復帰
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# アニメーション
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/default_pose.m {duration:7}

# 音
    playsound entity.puffer_fish.blow_up hostile @a ~ ~ ~ 3 0.75
