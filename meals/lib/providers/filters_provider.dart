import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter{
  glutenFree, lactoseFree, vegetarian, vegan
}


class FiltersNotifier extends StateNotifier<Map<Filter, bool>>{
  FiltersNotifier() : super({
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegetarian: false,
    Filter.vegan: false,
  }); //Pass out initial state to parent class

  // Manipulate initial State in an immutable way
  void setFilter(Filter filter, bool isActive){
    state = {
      ...state,
      filter: isActive,
    };
  }
  void setFilters(Map<Filter, bool> chosenFilters){
    state = chosenFilters;
  }
}

final filtersProvider = StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref) => FiltersNotifier());
