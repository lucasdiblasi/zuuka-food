import 'package:flutter/material.dart';
import 'package:zuukafood/screens/card.dart';
import 'package:zuukafood/screens/pix.dart';
import '../sidebar/navi_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta'),
        ),
      body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextFormField(
          decoration: InputDecoration(
          labelText:'Nome'
          ),
          ),
          TextFormField(
          decoration: InputDecoration(
          labelText:'E-mail'
          ),
          validator: (input) => !input.contains('@') ? 'E-mail inválido' : null,
          ),
          TextFormField(
          decoration: InputDecoration(
          labelText:'CPF (Opcional)'
          ),
          validator: (input) => !input.contains('000.000.000-00') ? 'CPF inválido' : null,
          ),
          TextFormField(
          decoration: InputDecoration(
          labelText:'Endereço'
          ),
          ),
          TextFormField(
          decoration: InputDecoration(
          labelText:'Telefone'
          ),
          validator: (input) => !input.contains('(00)00000.0000') ? 'Telefone inválido' : null,
          ),
          TextFormField(
          decoration: InputDecoration(
          labelText:'Senha'
          ),
          obscureText: true
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    SizedBox(
                      width: 150 ,
                      height: 150 ,
                      child: new RaisedButton(
                      child: Image.asset("assets/images/menus/PIX.png"),
                      color: Colors.white,              
                      onPressed: (){Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => AddPix()));},
                    ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: new RaisedButton(
                      child: Image.asset("assets/images/menus/Cards.png"),
                      color: Colors.white,              
                      onPressed: (){Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => AddCard()));},
                    ),
                    ),
                  ],
            ),    
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              RaisedButton(
                 child: Text('Salvar'),
                 color: Colors.orange,           
                 textColor: Colors.white,   
                 onPressed: (){},
                      ),
            ],
            ),
          )
      ],
      ),
      )
    );
  }
}