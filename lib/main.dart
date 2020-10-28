import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zuukafood/screens/car_items_screen.dart';
import 'package:zuukafood/screens/welcome_screen.dart';
import 'utils/app_routes.dart';
import 'screens/tabs_screen.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuuka Food',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.orangeAccent[200],
        fontFamily: 'Roboto',
        iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
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