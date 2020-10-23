import 'package:flutter/material.dart';
import 'package:zuukafood/screens/car_items_screen.dart';
import 'package:zuukafood/screens/welcome_screen.dart';
import 'utils/app_routes.dart';
import 'screens/tabs_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuuka Food',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.orangeAccent[200],
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle( 
            fontSize: 20,
            fontFamily:'Roboto'
          )
        )
      ),
     routes:{
       AppRoutes.HOME: (ctx) => WelcomeScreen(), 
       AppRoutes.TabsScreen: (ctx) => TabsScreen(),
       AppRoutes.CART: (ctx) => CarItemsScreen(),
     },
    );
  }
}