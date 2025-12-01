import 'package:bloc/bloc.dart';
import 'package:fintech_app/features/market/domain/filter_entity.dart';
import 'package:meta/meta.dart';

part 'market_state.dart';

class MarketCubit extends Cubit<MarketState> {
  MarketCubit() : super(MarketInitial());
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
}
