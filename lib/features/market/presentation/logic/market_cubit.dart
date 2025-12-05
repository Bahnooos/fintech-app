import 'package:bloc/bloc.dart';
import 'package:fintech_app/features/market/data/models/coin_overview_model.dart';
import 'package:fintech_app/features/market/domain/filter_entity.dart';
import 'package:meta/meta.dart';

part 'market_state.dart';

class MarketCubit extends Cubit<MarketState> {
  MarketCubit() : super(MarketInitial());
  CoinOverviewModel? selectedCoin;
  FilterEntity selectedFilter = FilterEntity(
    filterId: "All",
    filterName: "All",
  );
  List<FilterEntity> filters = [
    FilterEntity(filterId: "All", filterName: "All"),
    FilterEntity(filterId: "Gainers", filterName: "Gainers"),
    FilterEntity(filterId: "Losers", filterName: "Losers"),
    FilterEntity(filterId: "Favorites", filterName: "Favorites"),
  ];

  void selectFilter(FilterEntity filter) {
    selectedFilter = filter;
    emit(MarketFilterSelectedState());
  }

  List<CoinOverviewModel> coins = [
    CoinOverviewModel(
      coinId: "1",
      coinName: "Bitcoin",
      marketCapRank: 9,
      coinImage:
          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
      currentPrice: 1321213,
      priceChangePercentage24h: -1.3,
    ),
    CoinOverviewModel(
      coinId: "1",
      coinName: "Bitcoin",
      marketCapRank: 6,
      coinImage:
          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
      currentPrice: 1321313,
      priceChangePercentage24h: -1.3,
    ),
    CoinOverviewModel(
      coinId: "1",
      coinName: "Bitcoin",
      marketCapRank: 3,
      coinImage:
          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
      currentPrice: 1321213,
      priceChangePercentage24h: -1.3,
    ),
    CoinOverviewModel(
      coinId: "1",
      coinName: "Bitcoin",
      marketCapRank: 2,
      coinImage:
          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
      currentPrice: 132213,
      priceChangePercentage24h: -1.3,
    ),
    CoinOverviewModel(
      coinId: "1",
      marketCapRank: 1,
      coinName: "Bitcoin",
      coinImage:
          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
      currentPrice: 1312213,
      priceChangePercentage24h: 1.3,
    ),
  ];
}
