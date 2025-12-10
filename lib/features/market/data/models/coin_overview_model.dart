class CoinOverviewModel {
  String coinId;
  String coinName;
  String coinImage;
  double currentPrice;
  double priceChangePercentage24h;
  String symbol;
  int marketCapRank;

  CoinOverviewModel({
    required this.coinId,
    required this.coinName,
    required this.coinImage,
    required this.currentPrice,
    required this.marketCapRank,
    required this.priceChangePercentage24h,
    this.symbol = "",
  });

  factory CoinOverviewModel.fromJson(Map<String, dynamic> json) {
    return CoinOverviewModel(
      coinId: json['id'],
      coinName: json['name'],
      coinImage: json['image'],
      currentPrice: (json['current_price'] as num).toDouble(),
      marketCapRank: json['market_cap_rank'],
      priceChangePercentage24h: (json['price_change_percentage_24h'] as num)
          .toDouble(),
      symbol: json['symbol'],
    );
  }
}
