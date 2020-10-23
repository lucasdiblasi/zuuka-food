import 'package:flutter/material.dart';
import 'package:zuukafood/screens/login.dart';
import 'package:zuukafood/screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  Widget button ({
    @required String name,
    Color color,
    Color textColor,
    @required onPressed
    })
    {
    return Container(
                    height: 45,
                    width: 300,
                    child: RaisedButton(
                      color: color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white, 
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: onPressed,
                      child: Text(
                        name, 
                        style: TextStyle(
                          color: textColor
                          )
                          )
                    )
                   );
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Image.asset('assets/images/menus/pandafood.gif'),
              ),
            ),
            ),
         Expanded(
           child: Container( 
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [ 
                 Text('Bem vindo ao Zuuka Food', style: TextStyle(
                   fontSize: 20, 
                   fontWeight: FontWeight.bold, 
                   color: Colors.orange
                 ),
                 ),
                 Column(
                   children:[ 
                     Text('Faça seus pedidos para comer no Restaurante,'),
                     Text('Praças de Alimentação em shoppings ou Delivery.')
                   ],
                   ),
                   button(
                     name: 'Entrar',
                     color: Colors.orange,
                     textColor: Colors.white,
                     onPressed: () {
                       Navigator.push(context,MaterialPageRoute(builder: (context) => Login()
                      )
                      );
                     },
                    
                     ),
                    button(
                      name: 'Cadastrar', 
                      color: Colors.white,
                      textColor: Colors.orange,
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()
                        )
                        );
                      }
                      ) 
               ],
               )
           )
           )
        ],
        )
    );
  }
}