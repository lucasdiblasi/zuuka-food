import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/search.dart';
import '../widgets/topmenu.dart';
import '../widgets/popular_food.dart';
import '../sidebar/navi_bloc.dart';

class HomePage extends StatefulWidget with NavigationStates {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus()
          //  BestFoodWidget(),
          ],
        ),
      ),
    );
  }
} 
  class _HomePageStateLow extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold (
      body: ListView (
        children: <Widget>[
          PopularFoodItems(),
        ],
      )
    );
  }
}