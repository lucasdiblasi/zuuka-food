import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:zuukafood/screens/car_items_screen.dart';
import 'package:zuukafood/screens/cuppons.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/tabs_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuuka Food',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purpleAccent[100],
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle( 
            fontSize: 20,
            fontFamily:'Roboto'
          )
        )
      ),
     routes:{
       AppRoutes.HOME: (ctx) => TabsScreen(), 
       AppRoutes.CART: (ctx) => CarItemsScreen(),
       AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen()
     },
    );
  }
}