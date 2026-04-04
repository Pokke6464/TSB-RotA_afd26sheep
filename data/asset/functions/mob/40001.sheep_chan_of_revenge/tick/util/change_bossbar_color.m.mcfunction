#> asset:mob/40001.sheep_chan_of_revenge/tick/util/change_bossbar_color.m
#
# bossbarの色を変える
#
# @within function 
#   asset:mob/40001.sheep_chan_of_revenge/tick/util/start_invulnerable
#   asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable

# 色変更
    $bossbar set asset:angel$(MobUUID) color $(Color)
