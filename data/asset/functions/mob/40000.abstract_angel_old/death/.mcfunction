#> asset:mob/40000.abstract_angel_old/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/40000/death

# Args 設定
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/40000.abstract_angel_old/bossbar/remove.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
