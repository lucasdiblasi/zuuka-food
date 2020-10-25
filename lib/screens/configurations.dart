import 'package:flutter/material.dart';

import '../sidebar/navi_bloc.dart';

class Configurations extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
        title: Text('Configurações',
        style: TextStyle(color: Colors.white)
        ),
        ),
    );
  }
}