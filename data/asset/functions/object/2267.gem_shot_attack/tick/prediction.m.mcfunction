#> asset:object/2267.gem_shot_attack/tick/prediction.m
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# 地面があれば予告を表示
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [10f,8f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 35
    $execute at @s positioned ^ ^ ^$(PosZ) unless block ~ ~-1 ~ #lib:no_collision positioned ^ ^0.5 ^-4 run function api:object/summon

# 向きを変える
    $execute rotated as @s run tp @s ~ ~ ~ ~$(RotY) ~

# 再帰
    $execute at @s unless entity @s[y_rotation=0] run function asset:object/2267.gem_shot_attack/tick/prediction.m {PosZ:$(PosZ), RotY:$(RotY)}
