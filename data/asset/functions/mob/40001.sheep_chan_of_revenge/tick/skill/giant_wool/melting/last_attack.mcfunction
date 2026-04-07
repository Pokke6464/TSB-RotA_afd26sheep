#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/last_attack
#
# 巨大羊毛攻撃・融解タイプ
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melting/tick

# 笑う
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/laugh

# 攻撃(前半戦)
    # Normal
        execute if predicate api:global_vars/difficulty/1_normal if entity @s[tag=!UV5.IsLatter] positioned ^2 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"false"}
        execute if predicate api:global_vars/difficulty/1_normal if entity @s[tag=!UV5.IsLatter] positioned ^-2 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"false"}
    # Hard
        execute if predicate api:global_vars/difficulty/2_hard if entity @s[tag=!UV5.IsLatter] positioned ^ ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"false"}
        execute if predicate api:global_vars/difficulty/2_hard if entity @s[tag=!UV5.IsLatter] positioned ^4 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"false"}
        execute if predicate api:global_vars/difficulty/2_hard if entity @s[tag=!UV5.IsLatter] positioned ^-4 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"false", IsQuickAttack:"false"}
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=!UV5.IsLatter] positioned ^ ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"true"}

# 攻撃(後半戦)
    execute if entity @s[tag=!UV5.IsLatter] run return 0
    # Normal
        execute if predicate api:global_vars/difficulty/1_normal positioned ^ ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"false"}
    # Hard
        execute if predicate api:global_vars/difficulty/2_hard positioned ^3 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"false"}
        execute if predicate api:global_vars/difficulty/2_hard positioned ^-3 ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"false"}
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^ ^ ^3 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"true"}
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^4 ^ ^3 rotated ~-25 ~ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"false"}
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^-4 ^ ^3 rotated ~25 ~ run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m {IsGray:"true", IsQuickAttack:"false"}
