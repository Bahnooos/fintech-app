import 'package:json_annotation/json_annotation.dart';

part 'trending_response.g.dart';

@JsonSerializable(createToJson: false)
class TrendingResponse {
  final List<CoinWrapper>? coins;

  const TrendingResponse({this.coins});

  factory TrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingResponseFromJson(json);

  factory TrendingResponse.mock() => TrendingResponse(
    coins: List.generate(5, (index) => CoinWrapper.mock()),
  );
}

@JsonSerializable(createToJson: false)
class CoinWrapper {
  final CoinItem? item;

  const CoinWrapper({this.item});

  factory CoinWrapper.fromJson(Map<String, dynamic> json) =>
      _$CoinWrapperFromJson(json);

  factory CoinWrapper.mock() => CoinWrapper(item: CoinItem.mock());
}

@JsonSerializable(createToJson: false)
class CoinItem {
  final String? name;
  final String? symbol;

  @JsonKey(name: 'small')
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

  factory CoinItem.mock() => const CoinItem(
    name: 'Bitcoin Placeholder',
    symbol: 'BTC',
    image: '',
    data: CoinData(
      price: 45000.0,
      changePercentage: {'btc': 2.5},
    ),
  );
}

@JsonSerializable(createToJson: false)
class CoinData {
  final double? price;

  @JsonKey(name: 'price_change_percentage_24h')
  final Map<String, double?>? changePercentage;

  const CoinData({
    this.price,
    this.changePercentage,
  });

  factory CoinData.fromJson(Map<String, dynamic> json) =>
      _$CoinDataFromJson(json);
}


