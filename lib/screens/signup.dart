import 'package:flutter/material.dart';
import 'package:zuukafood/screens/welcome_screen.dart';
import 'package:zuukafood/widgets/text_field_signup.dart';

class SignUp extends StatefulWidget {
 @override
 _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

 Widget button({
   @required String buttonName,
   @required Color color,
   @required Color textColor,
   @required Function onPressed
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
    key: globalKey,
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
          MyTextFieldSignUp(
            hintText: 'Nome',
            obscureText: false,
          ),
          MyTextFieldSignUp(
              hintText:"E-mail" ,
              obscureText: false,
          ),
          MyTextFieldSignUp(
              hintText:"Endereço" ,
              obscureText: false,
          ),
          MyTextFieldSignUp(
              hintText:"Telefone",
              obscureText: false,
          ),
          MyTextFieldSignUp(
              hintText:"Senha",
              obscureText: true,
          ),
          MyTextFieldSignUp(
              hintText:"Confirme Sua Senha",
              obscureText: true,
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