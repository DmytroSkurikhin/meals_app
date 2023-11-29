import 'package:flutter_complete_guide/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]); //we are not allowed to edit this list

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      //here we have to remove items from list without using .remove() method
      //with .where() we filter a list and we get a new list which
      //includes all meals are not matched to meals on the input
      state = state.where((item) => item.id != meal.id).toList();
      return false;
    } else {
      //here we have to add items with spread operator (...) which pulls out
      //all the elements in that list and add them as individual elements to
      //this new list and by doing ', meal' we add meal to this list
      state = [...state, meal];
      return true;
    }
  }
}

final favoritesMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});


/*
//before using Provider package we did it like that:
//toggle (перемикач) because this function should
//either add a meal to the list or remove the meal
  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);
    if (isExisting) {
      setState(() {
        _favoriteMeals.remove(meal);
      });
      _showInfoMessage('Meal is no longer a favorite.');
    } else {
      setState(() {
        _favoriteMeals.add(meal);
      });
      _showInfoMessage('Marked as a favorite!');
    }
  } */