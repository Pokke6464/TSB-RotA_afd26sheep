#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/tick
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill_active

# アニメーション
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/40001.sheep_chan_of_revenge/tick/common/jump

# 演出
    execute if score @s General.Mob.Tick matches 0 run playsound entity.sheep.ambient hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 10 run particle poof ~ ~ ~ 2 0 2 0.5 30 force @a[distance=..32]
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/40001.sheep_chan_of_revenge/tick/common/step

# 無敵化
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/start_invulnerable

# ジャンプ
    execute if score @s General.Mob.Tick matches 10..29 run tp @s ~ ~7.5 ~

# 予告
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/prediction

# 落下
    execute if score @s General.Mob.Tick matches 50..69 run tp @s ~ ~-7.5 ~
    execute if score @s General.Mob.Tick matches 63 run function asset:mob/40001.sheep_chan_of_revenge/tick/common/jump
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/attack

# リセット
    execute if score @s General.Mob.Tick matches 95.. run function asset:mob/40001.sheep_chan_of_revenge/tick/reset
