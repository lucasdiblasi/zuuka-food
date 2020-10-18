import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../data/images.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final restaurant = ModalRoute.of(context).settings.arguments as Restaurant;

   final restaurantMeals = DUMMY_MEALS.where((meals) {
      return meals.restaurant.contains(restaurant.id);
    }).toList(); 

   return Scaffold(appBar: AppBar(
       title: Text(restaurant.title),
    ),
    body: ListView.builder(
      itemCount: restaurantMeals.length,
      itemBuilder: (ctx, index) {
        return MealItem(restaurantMeals[index]);
      },
      ),
    );
  }
}