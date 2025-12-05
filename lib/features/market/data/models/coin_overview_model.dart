class CoinOverviewModel {
  String coinId;
  String coinName;
  String coinImage;
  double currentPrice;
  double priceChangePercentage24h;

  int marketCapRank;

  CoinOverviewModel({
    required this.coinId,
    required this.coinName,
    required this.coinImage,
    required this.currentPrice,
    required this.marketCapRank,
    required this.priceChangePercentage24h,
  });
}
