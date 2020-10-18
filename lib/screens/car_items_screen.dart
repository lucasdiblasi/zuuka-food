import 'package:flutter/material.dart';

import '../sidebar/navi_bloc.dart';

class CarItemsScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Meus Pedidos",
      ),
    );
  }
}