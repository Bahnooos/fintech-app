// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalDataResponse _$GlobalDataResponseFromJson(Map<String, dynamic> json) =>
    GlobalDataResponse(
      data: json['data'] == null
          ? null
          : GlobalMarketData.fromJson(json['data'] as Map<String, dynamic>),
    );

GlobalMarketData _$GlobalMarketDataFromJson(
  Map<String, dynamic> json,
) => GlobalMarketData(
  activeCryptocurrencies: (json['active_cryptocurrencies'] as num?)?.toInt(),
  upcomingIcos: (json['upcoming_icos'] as num?)?.toInt(),
  ongoingIcos: (json['ongoing_icos'] as num?)?.toInt(),
  endedIcos: (json['ended_icos'] as num?)?.toInt(),
  markets: (json['markets'] as num?)?.toInt(),
  totalMarketCap: json['total_market_cap'] as Map<String, dynamic>?,
  totalVolume: json['total_volume'] as Map<String, dynamic>?,
  marketCapPercentage: json['market_cap_percentage'] as Map<String, dynamic>?,
  marketCapChangePercentage24hUsd:
      (json['market_cap_change_percentage_24h_usd'] as num?)?.toDouble(),
  updatedAt: (json['updated_at'] as num?)?.toInt(),
);
