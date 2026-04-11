#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/prediction
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/tick

#> Private
# @private
    #declare tag Target

# ランダムなプレイヤーへ移動
    execute positioned ~ ~-150 ~ run tag @r[gamemode=!spectator,distance=..128] add Target
    execute facing entity @p[tag=Target] feet positioned as @p[tag=Target] run tp @s ~ ~ ~ ~ 0

# 接地
    execute store result entity @s Pos[1] double 1 run data get entity @e[type=marker,tag=UV5.Marker.SpawnPoint,distance=..256,limit=1] Pos[1]

# Blesslessなら落下地点にブレを発生させる
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: Argument.Bounds set value [[5,5],[0,0],[5,5]]
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s run function lib:spread_entity/

# 予告表示
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [12f,12f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 40
    data modify storage api: Argument.ID set value 2063
    execute at @s positioned ~ ~ ~ run function api:object/summon

# 再度上空に移動(ターゲットが存在しない場合はやらない)
    execute if entity @p[tag=Target] at @s run tp @s ~ ~150 ~

# Targetタグ消去
    tag @p[tag=Target] remove Target
