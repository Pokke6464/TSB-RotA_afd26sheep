#> asset:object/40002.scor_death/summon/m
#
# @input args:
#   Rotation : double @ 2
#
# @within function asset:object/40002.scor_death/summon/

# 召喚する
    $summon armor_stand ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],Marker:1b,Invisible:1b,Passengers:[{id:"sheep",Rotation:$(Rotation),Tags:["Uninterferable"],Health:0f,DeathTime:-80s,DeathLootTable:"empty"}]}
