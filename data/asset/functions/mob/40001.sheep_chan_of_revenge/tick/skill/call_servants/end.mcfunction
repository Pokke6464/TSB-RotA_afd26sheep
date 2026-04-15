#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/end
#
# 眷属召喚
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick

# 後半戦タグの付与
    tag @s add UV5.IsLatter

# 無敵解除
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable

# リセット
    function asset:mob/40001.sheep_chan_of_revenge/tick/reset
