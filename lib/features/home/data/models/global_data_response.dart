import 'package:json_annotation/json_annotation.dart';

part 'global_data_response.g.dart';

@JsonSerializable(createToJson: false)
class GlobalDataResponse {
  final GlobalMarketData? data;

  GlobalDataResponse({this.data});

  factory GlobalDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GlobalDataResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class GlobalMarketData {
  @JsonKey(name: 'active_cryptocurrencies')
  final int? activeCryptocurrencies;
  @JsonKey(name: 'upcoming_icos')
  final int? upcomingIcos;
  @JsonKey(name: 'ongoing_icos')
  final int? ongoingIcos;
  @JsonKey(name: 'ended_icos')
  final int? endedIcos;
  final int? markets;
  @JsonKey(name: 'total_market_cap')
  final Map<String, dynamic>? totalMarketCap;
  @JsonKey(name: 'total_volume')  
  final Map<String, dynamic>? totalVolume;
  @JsonKey(name: 'market_cap_percentage')
  final Map<String, dynamic>? marketCapPercentage;
  @JsonKey(name: 'market_cap_change_percentage_24h_usd')
  final double? marketCapChangePercentage24hUsd;
  @JsonKey(name: 'updated_at')
  final int? updatedAt;

  GlobalMarketData({
    this.activeCryptocurrencies,
    this.upcomingIcos,
    this.ongoingIcos,
    this.endedIcos,
    this.markets,
    this.totalMarketCap,
    this.totalVolume,
    this.marketCapPercentage,
    this.marketCapChangePercentage24hUsd,
    this.updatedAt,
  });

  factory GlobalMarketData.fromJson(Map<String, dynamic> json) =>
      _$GlobalMarketDataFromJson(json);

      factory GlobalMarketData.mock() {
    return GlobalMarketData(
      activeCryptocurrencies: 12345,
      upcomingIcos: 0,
      ongoingIcos: 0,
      endedIcos: 0,
      markets: 0,
      totalMarketCap: {'usd': 1234567890000.0}, 
      totalVolume: {'usd': 98765432100.0},      
      marketCapChangePercentage24hUsd: 2.5,    
      updatedAt: 0,
    );
  }
}
