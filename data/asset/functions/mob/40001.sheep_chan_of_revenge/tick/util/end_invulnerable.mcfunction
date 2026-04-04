#> asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable
#
# 無敵解除
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# 無敵解除
    data modify entity @s Invulnerable set value false
    tag @s remove Uninterferable

# bossbarの色を変更
    execute store result storage asset:temp UV5.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage asset:temp UV5.Color set value "pink"
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/change_bossbar_color.m with storage asset:temp UV5
    data remove storage asset:temp UV5
