#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/attack
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_attack

# ヒット判定
    # 円範囲
        tag @a[tag=!PlayerShouldInvulnerable,distance=..15] add DXYZ

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SuperJump.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.SuperJump.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.SuperJump.Element
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの着地の衝撃で粉々になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 演出
    function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/attack_effect

# DXYZ終了
    tag @a[tag=DXYZ] remove DXYZ

# 衝撃波を召喚
    execute if entity @s[tag=!CO.IsLatter] run data modify storage api: Argument set value {ID:9000, FieldOverride:{Color:11184810, Speed:1.25, SkipTick:7, Tick:67, HitBoxDelay:8}}
    execute if entity @s[tag=CO.IsLatter] run data modify storage api: Argument set value {ID:9000, FieldOverride:{Color:2263278, Speed:1.25, SkipTick:7, Tick:67, HitBoxDelay:8}}
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.RingShockWave
    execute positioned ~ ~0.2 ~ run function api:object/summon
    # 後半戦で追加
        execute if entity @s[tag=!CO.IsLatter] run return fail
        data modify storage api: Argument set value {ID:9000, FieldOverride:{Color:2263278, Speed:2, SkipTick:5, Tick:65, HitBoxDelay:6}}
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
        data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.RingShockWave
        execute positioned ~ ~0.2 ~ run function api:object/summon
