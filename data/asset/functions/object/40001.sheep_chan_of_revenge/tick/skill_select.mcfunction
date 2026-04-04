#> asset:mob/40001.sheep_chan_of_revenge/tick/skill_select
#
# モブが持つスキル一覧、ランダムに実行
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/

#> Private
# @private
    #declare score_holder $Random

# Tick0に戻す
    scoreboard players set @s General.Mob.Tick 0

# 行動中としてタグ付与
    tag @s add UV5.InAction

# ランダム
# 乱数によるスキル選択
        data modify storage lib: Args.key set value "40000.Skill"
        data modify storage lib: Args.max set value 2
        data modify storage lib: Args.scarcity_history_size set value 3
        execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args
    # デバッグ
        scoreboard players set $Random Temporary 1
    # スキル選択
        execute if score $Random Temporary matches 0 run tag @s add UV5.Skill.GiantWool
        execute if score $Random Temporary matches 1 run tag @s add UV5.Skill.Jump
    # リセット
        scoreboard players reset $Random Temporary
