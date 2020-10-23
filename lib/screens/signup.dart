import 'package:flutter/material.dart';
import 'package:zuukafood/screens/welcome_screen.dart';

class SignUp extends StatelessWidget {
 Widget textField({
   @required String hintText,
 }) {
   return TextFormField(
            decoration: InputDecoration( 
              hintText: hintText,
              hintStyle: TextStyle( 
                color: Colors.white
              ),
              enabledBorder: UnderlineInputBorder( 
                borderSide: BorderSide( 
                  color: Colors.white
                )
              )
            ),
          );
 }

 Widget button({
   @required String buttonName,
   @required Color color,
   @required textColor,
   @required onPressed
 }) {
   return Container(
                   width: 130,
                   child: RaisedButton(
                     color: color,
                     shape: RoundedRectangleBorder(
                       side: BorderSide(
                          color: Colors.white, 
                          width: 2
                        ),
                       borderRadius: BorderRadius.circular(30)
                     ),
                     child: Text(
                       buttonName,
                       style: TextStyle(
                       fontSize:  15, 
                       color: textColor 
                       ),
                    ),
                     onPressed: onPressed,
                ),
              );
 }
@override  
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.orange,
    body: SafeArea(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Cadastrar', style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
            fontSize: 40
            ),
            ),
            Container(
              height: 300,
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          textField(
              hintText:"Nome",
          ),
          textField(
              hintText:"E-mail" 
          ),
          textField(
              hintText:"Senha" 
          ),
          textField(
              hintText:"Confirme Sua Senha" 
          ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
               children: [
                 button(
                   buttonName: 'Cancelar', 
                   color: Colors.orange,
                   textColor: Colors.white,
                   onPressed: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomeScreen()
                        )
                        );
                   }
                ),
                SizedBox( 
                  width: 10,
                ),
                 button(
                   buttonName: 'Cadastrar', 
                   color: Colors.white,
                   textColor: Colors.orange,
                   onPressed: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()
                        )
                        );
                   }
                ),
               ],
            )
        ],
      ),
    )
    )
  );
}

} 