import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../components/category_item.dart';
import '../data/images.dart';

// Tela de exibição de grade de categorias

class CategoriesScreen extends StatelessWidget {
@override 
Widget build(BuildContext context) {
  return Scaffold(
    body: GridView( /*irá extender o eixo horizontal*/
      padding: const EdgeInsets.all(25),  
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20, // espaçamento eixo cruzado
      mainAxisSpacing: 20,    
      ),
      children: DUMMY_CATEGORIES.map((cat) {
         return CategoryItem(cat);
      }).toList(),
    ),
  );

}

}