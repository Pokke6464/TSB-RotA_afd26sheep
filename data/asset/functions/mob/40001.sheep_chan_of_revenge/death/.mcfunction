#> asset:mob/40001.sheep_chan_of_revenge/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/40001/death

# super.death
    function asset:mob/super.death

# 演出

# 中心点削除
    kill @e[type=marker,tag=UV5.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    kill @e[tag=UV5.Object]

# モデル削除
    function animated_java:sheep_avenger/remove/all

return 0
# ボスドロ
    data modify storage api: Argument.ID set value 1084
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
