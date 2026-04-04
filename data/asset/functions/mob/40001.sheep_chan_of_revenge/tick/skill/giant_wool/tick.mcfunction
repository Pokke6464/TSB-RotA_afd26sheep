#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/tick
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill_active

# 予告
    function asset:mob/40001.sheep_chan_of_revenge/tick/common/laugh
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/prediction

# 巨大羊毛攻撃
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 25 positioned ^4 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 25 positioned ^-4 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 30 positioned ^8 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 30 positioned ^-8 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 35 positioned ^12 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if score @s General.Mob.Tick matches 35 positioned ^-12 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}

# 端の巨大羊毛。Blesslessなら追尾する灰色になる
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 40 positioned ^16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 40 positioned ^-16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false"}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 40 positioned ^16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true"}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 40 positioned ^-16 ^ ^ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true"}

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/40001.sheep_chan_of_revenge/tick/reset
