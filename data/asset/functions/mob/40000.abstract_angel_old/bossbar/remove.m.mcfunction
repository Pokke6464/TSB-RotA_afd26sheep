#> asset:mob/40000.abstract_angel_old/bossbar/remove.m
#
#
#
# @input args
#   UUID: int
# @within function
#   asset:mob/40000.abstract_angel_old/remove/
#   asset:mob/40000.abstract_angel_old/death/

# ボスバーを削除する
    $bossbar remove asset:angel$(UUID)
