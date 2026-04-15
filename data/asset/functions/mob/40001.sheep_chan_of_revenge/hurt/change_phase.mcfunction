#> asset:mob/40001.sheep_chan_of_revenge/hurt/change_phase
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/40001.sheep_chan_of_revenge/hurt/

# 体力検知
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# HPが半分を切っていなければここで終了
    execute unless score $HealthPer Temporary matches ..50 run return run scoreboard players reset $HealthPer Temporary


## 以降は50%を切っていた場合の処理
# 行動キャンセル
    function asset:mob/40001.sheep_chan_of_revenge/tick/reset

# タグ付与
    tag @s add UV5.HealthLess50Per

# 眷属召喚開始
    tag @s add UV5.InAction
    tag @s add UV5.Skill.CallServants

# Tickを-1にする。これをしないとTick1から処理が始まってTick0が検知できない
    scoreboard players set @s General.Mob.Tick -1

# 終了
    scoreboard players reset $HealthPer Temporary
