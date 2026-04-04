#> asset:mob/40001.sheep_chan_of_revenge/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within
#   function asset:mob/alias/40001/remove
#   function asset:mob/40001.sheep_chan_of_revenge/init/

# 継承元の処理実行
    function asset:mob/super.remove

# 中心点削除
    kill @e[type=marker,tag=UV5.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    kill @e[tag=UV5.Object]

# モデル削除
    function animated_java:sheep_avenger/remove/all
