#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/horizontal/prediction
#
# 巨大羊毛攻撃・水平タイプ
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/horizontal/tick

# 向きを変える
    tp @s ~ ~ ~ ~90 ~

# 予告表示
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Interpolation set value 0
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute if entity @s[tag=!UV5.IsLatter] run data modify storage api: Argument.FieldOverride.Scale set value [6f,28f]
    execute if entity @s[tag=UV5.IsLatter] run data modify storage api: Argument.FieldOverride.Scale set value [6f,36f]
    execute if entity @s[tag=!UV5.IsLatter] at @s positioned ^3 ^0.1 ^-14 run function api:object/summon
    execute if entity @s[tag=UV5.IsLatter] at @s positioned ^3 ^0.1 ^-18 run function api:object/summon

# 向きを戻す
    tp @s ~ ~ ~ ~ ~