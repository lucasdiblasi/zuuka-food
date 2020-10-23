import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
   
   Widget _createSelectionTitle(BuildContext context, String title) {
      return Container(
            width: 430,
            margin: EdgeInsets.symmetric(vertical:10),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          );
   }

   Widget _createSectionContainer(Widget child) {
     return Container(
            width: 400,
            height: 250,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.orange),
              borderRadius: BorderRadius.circular(10)
            ),
            child: child,
          );
   }

  @override 
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit:BoxFit.cover,
            )
          ),
          _createSelectionTitle(context, meal.description),
          _createSectionContainer(
            ListView.builder(
              itemCount: meal.complement.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(meal.complement[index]),
                  ),
                  color: Theme.of(context).accentColor,
                );
              }
            ),
          ),
        ]
      ),
    );
  }
}