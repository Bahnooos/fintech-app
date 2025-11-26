import 'package:json_annotation/json_annotation.dart';

part 'trending_response.g.dart';

@JsonSerializable(createToJson: false)
class TrendingResponse {
  final List<CoinWrapper>? coins;

  const TrendingResponse({this.coins});

  factory TrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class CoinWrapper {
  final CoinItem? item;

  const CoinWrapper({this.item});

  factory CoinWrapper.fromJson(Map<String, dynamic> json) =>
      _$CoinWrapperFromJson(json);
}

@JsonSerializable(createToJson: false)
class CoinItem {
  final String? name;
  final String? symbol;

  @JsonKey(name: 'large')
  final String? image;
  final CoinData? data;

  const CoinItem({
    this.name,
    this.symbol,
    this.image,
    this.data,
  });

  factory CoinItem.fromJson(Map<String, dynamic> json) =>
      _$CoinItemFromJson(json);
}

@JsonSerializable(createToJson: false)
class CoinData {
  final double? price;

  @JsonKey(name: 'price_change_percentage_24h', fromJson: _parseCurrencyMap)
  final Map<String, dynamic>? changePercentage;

  const CoinData({
    this.price,
    this.changePercentage,
  });

  factory CoinData.fromJson(Map<String, dynamic> json) =>
      _$CoinDataFromJson(json);
}

double _toDouble(dynamic value) {
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

Map<String, dynamic> _parseCurrencyMap(dynamic json) {
  if (json is! Map) return {};
  return json.map((key, value) => MapEntry(key.toString(), _toDouble(value)));
}
