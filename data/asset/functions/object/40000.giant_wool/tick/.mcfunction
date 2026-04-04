#> asset:object/40000.giant_wool/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/40000/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転が加速しきるまで
    execute if entity @s[scores={General.Object.Tick=..73}] run function asset:object/40000.giant_wool/tick/beginning_spin

# 高速回転
    execute if entity @s[tag=40000.HighSpeedSpinning] run function asset:object/40000.giant_wool/tick/high_speed_spin

# 灰色なら高速回転状態の時、前方の敵に誘導させる
    execute if entity @s[tag=40000.HighSpeedSpinning,tag=40000.IsGray] positioned ^ ^ ^15 run tag @p[tag=!PlayerShouldInvulnerable,distance=..15] add Targetable
    execute if entity @s[tag=40000.HighSpeedSpinning,tag=40000.IsGray] facing entity @p[tag=Targetable,distance=..30] feet positioned ^ ^ ^-150 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
    execute if entity @s[tag=40000.HighSpeedSpinning,tag=40000.IsGray] run tag @a[tag=Targetable,distance=..30] remove Targetable

# 下に落ちる
    execute at @s if block ~ ~-1.7 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.15 ~
    execute at @s if block ~ ~-1.7 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.15 ~

# 継承して動かす
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=40000.BeginningSpin] remove 40000.BeginningSpin
    tag @a[tag=DXYZ,distance=..10] remove DXYZ

# 消滅処理
    kill @s[scores={General.Object.Tick=800..}]
