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

GlobalMarketData _$GlobalMarketDataFromJson(Map<String, dynamic> json) =>
    GlobalMarketData(
      activeCryptocurrencies: (json['activeCryptocurrencies'] as num?)?.toInt(),
      upcomingIcos: (json['upcomingIcos'] as num?)?.toInt(),
      ongoingIcos: (json['ongoingIcos'] as num?)?.toInt(),
      endedIcos: (json['endedIcos'] as num?)?.toInt(),
      markets: (json['markets'] as num?)?.toInt(),
      totalMarketCap: json['totalMarketCap'] as Map<String, dynamic>?,
      totalVolume: json['totalVolume'] as Map<String, dynamic>?,
      marketCapPercentage: json['marketCapPercentage'] as Map<String, dynamic>?,
      marketCapChangePercentage24hUsd:
          (json['marketCapChangePercentage24hUsd'] as num?)?.toDouble(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
    );
