#> asset:mob/40001.sheep_chan_of_revenge/tick/util/step
#
# 足音
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# 音
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.6

# パーティクル
    execute unless block ~ ~-0.2 ~ #lib:no_collision run particle block quartz_block ~ ~0.1 ~ 0.7 0.1 0.7 0 10
