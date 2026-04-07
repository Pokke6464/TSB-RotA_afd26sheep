#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/tick
#
# 巨大羊毛攻撃・融解タイプ
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill_active

# 笑う
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh
    execute if score @s General.Mob.Tick matches 7 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh
    execute if score @s General.Mob.Tick matches 14 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh

# 1回目
    # 溶ける
        execute if score @s General.Mob.Tick matches 25 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/melt
    # 予告表示
        execute if score @s General.Mob.Tick matches 35 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/prediction.m {Bounds:25}
    # 戻る
        execute if score @s General.Mob.Tick matches 60 positioned ~ ~150 ~ facing entity @p[gamemode=!spectator] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
        execute if score @s General.Mob.Tick matches 65 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/emerge
        execute if score @s General.Mob.Tick matches 65 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable
    # 攻撃
        execute if score @s General.Mob.Tick matches 73 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/attack

# 2回目
    # 溶ける
        execute if score @s General.Mob.Tick matches 85 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/melt
    # 予告表示
        execute if score @s General.Mob.Tick matches 95 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/prediction.m {Bounds:25}
    # 戻る
        execute if score @s General.Mob.Tick matches 120 positioned ~ ~150 ~ facing entity @p[gamemode=!spectator] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
        execute if score @s General.Mob.Tick matches 125 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/emerge
        execute if score @s General.Mob.Tick matches 125 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable
    # 攻撃
        execute if score @s General.Mob.Tick matches 133 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/attack

# 3回目
    # 溶ける
        execute if score @s General.Mob.Tick matches 145 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/melt
    # 予告表示
        execute if score @s General.Mob.Tick matches 155 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/prediction.m {Bounds:5}
    # 戻る
        execute if score @s General.Mob.Tick matches 180 positioned ~ ~150 ~ facing entity @p[gamemode=!spectator] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
        execute if score @s General.Mob.Tick matches 185 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/emerge
        execute if score @s General.Mob.Tick matches 185 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable
    # 最終攻撃
        execute if score @s General.Mob.Tick matches 193 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/last_attack

# リセット
    execute if score @s General.Mob.Tick matches 220.. run function asset:mob/40001.sheep_chan_of_revenge/tick/reset
