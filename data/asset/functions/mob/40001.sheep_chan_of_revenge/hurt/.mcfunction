#> asset:mob/40001.sheep_chan_of_revenge/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/40001/hurt

# super.hurt
    function asset:mob/super.hurt

# 音
    execute if entity @s run playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# フェーズ移行
    execute if entity @s[tag=!UV5.HealthLess50Per] run function asset:mob/40001.sheep_chan_of_revenge/hurt/change_phase
