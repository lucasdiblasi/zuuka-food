import 'package:flutter/material.dart';
import '../widgets/search.dart';
import '../widgets/topmenu.dart';
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