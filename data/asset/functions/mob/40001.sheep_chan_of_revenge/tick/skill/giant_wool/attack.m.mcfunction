#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/attack.m
#
#
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill/giant_wool/**

# 巨大羊毛召喚
    data modify storage api: Argument.ID set value 40000
    $data modify storage api: Argument.FieldOverride.IsGray set value $(IsGray)
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.GiantWool
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~1.5 ~ run function api:object/summon
