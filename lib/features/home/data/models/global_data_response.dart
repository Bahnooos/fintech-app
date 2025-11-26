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
  final int? activeCryptocurrencies;
  final int? upcomingIcos;
  final int? ongoingIcos;
  final int? endedIcos;
  final int? markets;
  final Map<String, dynamic>? totalMarketCap;
  final Map<String, dynamic>? totalVolume;
  final Map<String, dynamic>? marketCapPercentage;
  final double? marketCapChangePercentage24hUsd;
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
}
