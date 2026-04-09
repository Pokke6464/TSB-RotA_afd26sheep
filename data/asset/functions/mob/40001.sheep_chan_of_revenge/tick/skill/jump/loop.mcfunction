#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/loop
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/tick

# ループ回数減算
    scoreboard players remove @s UV5.LoopCount 1

# スコアを戻す
    scoreboard players set @s General.Mob.Tick -1
