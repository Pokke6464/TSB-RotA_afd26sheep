#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/prediction_1
#
# 眷属召喚
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick

# 下に移動
    execute positioned as @e[type=marker,tag=UV5.Marker.SpawnPoint,distance=..256,limit=1] run tp @s ~ ~-150 ~-26.5

# 予告表示
    data modify storage api: Argument.FieldOverride.Color set value 0
    data modify storage api: Argument.FieldOverride.Scale set value [7f,7f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 99
    data modify storage api: Argument.ID set value 2063
    execute at @s positioned ~ ~150 ~ run function api:object/summon
