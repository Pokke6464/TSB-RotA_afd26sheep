#> asset:object/40000.giant_wool/hit_entity/beginning_hit
#
# 回転し始めのヒット判定
#
# @within function asset:object/40000.giant_wool/hit_entity/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Beginning
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの巨大羊毛に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset
