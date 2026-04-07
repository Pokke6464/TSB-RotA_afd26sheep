#> asset:object/40002.scor_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/40002/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
