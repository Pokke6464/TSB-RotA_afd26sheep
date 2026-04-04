#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack

# ヒット判定
    # 円範囲
        tag @a[distance=..10] add DXYZ
    # 直線範囲
        tag @a[tag=DXYZ] remove DXYZ
        execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage lib: args.dx set value 4
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~ 0 run function lib:rotatable_dxyz/m with storage lib: args
        execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage lib: args.dx set value 4
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~60 0 run function lib:rotatable_dxyz/m with storage lib: args
        execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage lib: args.dx set value 4
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~120 0 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SwordAttack.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.SwordAttack.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.SwordAttack.Element
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの巨大な剣でぺしゃんこになった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 演出
    function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect

# DXYZ終了
    tag @a[tag=DXYZ] remove DXYZ

# 衝撃波を召喚
    execute if entity @s[tag=!CO.IsLatter] run data modify storage api: Argument set value {ID:9000, FieldOverride:{Color:11184810, Speed:1.5, SkipTick:6, Tick:67, HitBoxDelay:7}}
    execute if entity @s[tag=CO.IsLatter] run data modify storage api: Argument set value {ID:9000, FieldOverride:{Color:2263278, Speed:1, SkipTick:7, Tick:67, HitBoxDelay:8}}
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.RingShockWave
    execute positioned ~ ~0.2 ~ run function api:object/summon
