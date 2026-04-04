#> asset:mob/40001.sheep_chan_of_revenge/tick/skill_active
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/

# 使用スキルの選択
    execute if entity @s[tag=UV5.Skill.GiantWool.Horizontal] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/horizontal/tick
    execute if entity @s[tag=UV5.Skill.GiantWool.Melting] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/melt/tick
    execute if entity @s[tag=UV5.Skill.Jump] run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/tick
