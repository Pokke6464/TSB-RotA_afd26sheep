#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/attack
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/jump/tick

# 無敵解除
    function asset:mob/40001.sheep_chan_of_revenge/tick/util/end_invulnerable

# 演出
    playsound entity.wither.break_block hostile @a ~ ~ ~ 2 0.65
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.8
    particle large_smoke ~ ~ ~ 3 0 3 0.5 50 force @a[distance=..64]
    particle explosion ~ ~ ~ 4 4 4 0 50 force @a[distance=..64]
    execute if block ~ ~-0.2 ~ #lib:no_collision rotated ~ 0 run particle block_marker white_wool ^ ^-0.5 ^-0.5 1 0 1 0 20 force @a[distance=..64]

# 攻撃
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Jump
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって平たくなった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 衝撃波を召喚
    data modify storage api: Argument.ID set value 40001
    execute if entity @s[tag=!UV5.IsLatter] run data modify storage api: Argument.FieldOverride.Speed set value 1.5
    execute if entity @s[tag=UV5.IsLatter] store result storage api: Argument.FieldOverride.Speed float 0.01 run random value 100..200
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.JumpShockWave
    execute positioned ~ ~0.2 ~ run function api:object/summon
