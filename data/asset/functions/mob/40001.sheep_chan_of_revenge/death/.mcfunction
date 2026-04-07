#> asset:mob/40001.sheep_chan_of_revenge/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/40001/death

# super.death
    function asset:mob/super.death

# 演出
    playsound entity.sheep.death hostile @a ~ ~ ~ 3 1

# 中心点削除
    kill @e[type=marker,tag=UV5.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    kill @e[tag=UV5.Object]

# モデル削除
    function animated_java:sheep_avenger/remove/all

# 死亡演出召喚
    data modify storage api: Argument.ID set value 40002
    execute positioned ~ ~0.25 ~ run function api:object/summon
