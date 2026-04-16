#> rota_afd26sheep:tick
#
# 常時実行部分
#
# @within tag/function minecraft:tick

# 一度だけ実行
    execute unless data storage rota: {FirstJoin:true} run function rota_afd26sheep:first_join