// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinModel _$CoinModelFromJson(Map<String, dynamic> json) => CoinModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
  image: json['image'] as String?,
  currentPrice: CoinModel._toDouble(json['current_price']),
  priceChangePercentage24h: CoinModel._toDouble(
    json['price_change_percentage_24h'],
  ),
);
