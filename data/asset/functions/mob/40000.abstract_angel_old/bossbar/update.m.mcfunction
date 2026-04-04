#> asset:mob/40000.abstract_angel_old/bossbar/update.m
#
#
#
# @input args
#   UUID: int
# @within function asset:mob/40000.abstract_angel_old/update_bossbar/

# 数値設定
    function api:mob/get_health
    $execute store result bossbar asset:angel$(UUID) value run data get storage api: Return.Health 100
