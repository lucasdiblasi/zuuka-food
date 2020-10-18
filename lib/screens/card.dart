import 'package:flutter/material.dart';

import '../sidebar/navi_bloc.dart';

class AddCard extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Cartão'),
        ),
    );
  }
}