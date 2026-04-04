#> asset:mob/40000.abstract_angel_old/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/40000/init

# Args 設定
    data modify storage asset:temp Args.Name set from storage asset:context this.BossbarName
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/40000.abstract_angel_old/bossbar/add.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
