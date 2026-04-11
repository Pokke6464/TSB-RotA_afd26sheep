#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melt/prediction.m
#
# 巨大羊毛攻撃・融解タイプ
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melt/tick

# 拡散
    $data modify storage lib: Argument.Bounds set value [[$(Bounds),$(Bounds)],[0,0],[$(Bounds),$(Bounds)]]
    execute at @e[type=marker,tag=UV5.Marker.SpawnPoint,distance=..256,limit=1] run function lib:spread_entity/

# 予告表示
    data modify storage api: Argument.FieldOverride.Color set value 0
    data modify storage api: Argument.FieldOverride.Scale set value [7f,7f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 29
    data modify storage api: Argument.ID set value 2063
    execute at @s positioned ~ ~ ~ run function api:object/summon

# 下に移動
    execute at @s run tp @s ~ ~-150 ~
