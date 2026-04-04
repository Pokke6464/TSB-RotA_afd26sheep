#> asset:object/2269.gem_rocket_punch/tick/explosion
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/event_attack

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.8
    particle explosion ~ ~ ~ 4 4 4 0 30 force @a[distance=..64]
    particle soul_fire_flame ~ ~ ~ 3 3 3 0.25 30 force @a[distance=..64]

# 攻撃
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのロケットパンチに吹き飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
