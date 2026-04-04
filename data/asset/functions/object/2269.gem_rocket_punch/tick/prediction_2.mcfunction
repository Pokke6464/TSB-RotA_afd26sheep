#> asset:object/2269.gem_rocket_punch/tick/prediction_2
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/event_attack

# ランダムなプレイヤーへ移動
    execute positioned as @r[gamemode=!spectator,distance=256] run tp @s ~ ~ ~ ~180 90

# 接地
    execute store result entity @s Pos[1] double 1 run data get entity @e[type=marker,tag=CO.CenterPosition,distance=..256,limit=1] Pos[1]

# 落下地点をばらけさせる
    data modify storage lib: Argument.Bounds set value [[5,5],[0,0],[5,5]]
    execute at @s run function lib:spread_entity/

# 予告
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 48
    execute at @s positioned ~ ~ ~ run function api:object/summon

# 上に移動
    execute at @s run tp @s ~ ~147 ~
