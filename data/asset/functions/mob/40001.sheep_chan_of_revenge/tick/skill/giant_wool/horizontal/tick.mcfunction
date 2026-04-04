#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/horizontal/tick
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill_active

# 予告
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/horizontal/prediction

# 巨大羊毛攻撃
    execute if score @s General.Mob.Tick matches 20 positioned ^ ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 25 positioned ^4 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 25 positioned ^-4 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 30 positioned ^8 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 30 positioned ^-8 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 35 positioned ^12 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 35 positioned ^-12 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}

# 後半戦で更に羊毛を2つ追加。Blesslessなら追尾する灰色になる
    execute if entity @s[tag=UV5.IsLatter] if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 40 positioned ^16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if entity @s[tag=UV5.IsLatter] if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 40 positioned ^-16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if entity @s[tag=UV5.IsLatter] if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 40 positioned ^16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true"}
    execute if entity @s[tag=UV5.IsLatter] if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 40 positioned ^-16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true"}

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/40001.sheep_chan_of_revenge/tick/reset
