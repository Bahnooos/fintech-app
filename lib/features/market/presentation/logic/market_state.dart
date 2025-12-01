part of 'market_cubit.dart';

@immutable
sealed class MarketState {}

final class MarketInitial extends MarketState {}

final class MarketFilterSelectedState extends MarketState {}
