#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/attack
#
# 巨大羊毛攻撃・融解タイプ
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/tick

# 笑う
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh

# 攻撃(前半戦)
    # Hard以下
        execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=!UV5.IsLatter] positioned ^ ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=!UV5.IsLatter] positioned ^2 ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}
        execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=!UV5.IsLatter] positioned ^-2 ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}

# 攻撃(後半戦)
    execute if entity @s[tag=!UV5.IsLatter] run return 0
    # Hard以下
        execute if predicate api:global_vars/difficulty/max/2_hard positioned ^2 ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}
        execute if predicate api:global_vars/difficulty/max/2_hard positioned ^-2 ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^ ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^4 ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^-4 ^ ^4 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"true"}