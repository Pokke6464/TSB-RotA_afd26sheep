#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/prediction
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/tick

# 向きを変える
    tp @s ~ ~ ~ ~90 ~

# 予告表示
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [6f,36f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 0
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute at @s positioned ^3 ^0.1 ^-18 run function api:object/summon

# 向きを戻す
    tp @s ~ ~ ~ ~ ~