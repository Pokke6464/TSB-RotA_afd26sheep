#> asset:object/2267.gem_shot_attack/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2267/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=6}] run function asset:object/2267.gem_shot_attack/tick/prediction.m {PosZ:10, RotY:45}
    execute if entity @s[scores={General.Object.Tick=37}] run function asset:object/2267.gem_shot_attack/tick/hit.m {PosZ:10, RotY:45}
    execute if entity @s[scores={General.Object.Tick=37}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.7 0.5

    execute if entity @s[scores={General.Object.Tick=39}] run function asset:object/2267.gem_shot_attack/tick/prediction.m {PosZ:18, RotY:22.5}
    execute if entity @s[scores={General.Object.Tick=70}] run function asset:object/2267.gem_shot_attack/tick/hit.m {PosZ:18, RotY:22.5}
    execute if entity @s[scores={General.Object.Tick=70}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.8 0.5
    
    execute if entity @s[scores={General.Object.Tick=72}] run function asset:object/2267.gem_shot_attack/tick/prediction.m {PosZ:26, RotY:15}
    execute if entity @s[scores={General.Object.Tick=103}] run function asset:object/2267.gem_shot_attack/tick/hit.m {PosZ:26, RotY:15}
    execute if entity @s[scores={General.Object.Tick=103}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.8 0.5

    execute if entity @s[scores={General.Object.Tick=105}] run function asset:object/2267.gem_shot_attack/tick/prediction.m {PosZ:34, RotY:15}
    execute if entity @s[scores={General.Object.Tick=136}] run function asset:object/2267.gem_shot_attack/tick/hit.m {PosZ:34, RotY:10}
    execute if entity @s[scores={General.Object.Tick=136}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.8 0.5

# 消滅処理
    kill @s[scores={General.Object.Tick=139..}]
