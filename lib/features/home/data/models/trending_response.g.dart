// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingResponse _$TrendingResponseFromJson(Map<String, dynamic> json) =>
    TrendingResponse(
      coins: (json['coins'] as List<dynamic>?)
          ?.map((e) => CoinWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CoinWrapper _$CoinWrapperFromJson(Map<String, dynamic> json) => CoinWrapper(
  item: json['item'] == null
      ? null
      : CoinItem.fromJson(json['item'] as Map<String, dynamic>),
);

CoinItem _$CoinItemFromJson(Map<String, dynamic> json) => CoinItem(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
  image: json['small'] as String?,
  data: json['data'] == null
      ? null
      : CoinData.fromJson(json['data'] as Map<String, dynamic>),
);

CoinData _$CoinDataFromJson(Map<String, dynamic> json) => CoinData(
  price: (json['price'] as num?)?.toDouble(),
  changePercentage: _parseCurrencyMap(json['price_change_percentage_24h']),
);
