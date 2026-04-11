#> asset:mob/40001.sheep_chan_of_revenge/tick/skill_active
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/

# 使用スキルの選択
    # 巨大羊毛攻撃・水平タイプ
        execute if entity @s[tag=UV5.Skill.GiantWool.Horizontal] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/horizontal/tick
    # 巨大羊毛攻撃・融解タイプ
        execute if entity @s[tag=UV5.Skill.GiantWool.Melting] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melt/tick
    # ジャンプ攻撃
        execute if entity @s[tag=UV5.Skill.Jump] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/tick
    # 眷属召喚
        execute if entity @s[tag=UV5.Skill.CallServants] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick
