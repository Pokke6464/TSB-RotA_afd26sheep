#> asset:mob/40001.sheep_chan_of_revenge/tick/reset
#
# リセット処理
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/**

# タグリセット
    tag @s remove UV5.Skill.GiantWool.Horizontal
    tag @s remove UV5.Skill.GiantWool.Melting
    tag @s remove UV5.Skill.Jump
    tag @s remove UV5.Skill.CallServants

    tag @s remove UV5.InAction

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
    scoreboard players reset @s UV5.LoopCount
