#> asset:mob/40001.sheep_chan_of_revenge/tick/util/start_invulnerable
#
# 無敵化
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/**

# 無敵化
    data modify entity @s Invulnerable set value true
    tag @s add Uninterferable

# bossbarの色を変更
    execute store result storage asset:temp UV5.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage asset:temp UV5.Color set value "white"
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/change_bossbar_color.m with storage asset:temp UV5
    data remove storage asset:temp UV5
