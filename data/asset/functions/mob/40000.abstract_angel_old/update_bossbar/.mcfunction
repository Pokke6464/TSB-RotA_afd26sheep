#> asset:mob/40000.abstract_angel_old/update_bossbar/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/40000/update_bossbar

# Args 設定
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/40000.abstract_angel_old/bossbar/update.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
