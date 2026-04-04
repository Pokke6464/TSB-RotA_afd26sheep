#> asset:object/40000.giant_wool/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/40000/kill

# 演出
    particle explosion ~ ~1 ~ 0.3 0.3 0.3 0 5 force @a[distance=..64]
    particle cloud ~ ~1 ~ 0 0 0 0.3 50 force @a[distance=..64]
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.3 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.6 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.9 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Clash
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの巨大羊毛に粉砕された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset

# キル
    kill @s
