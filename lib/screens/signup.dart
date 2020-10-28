import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zuukafood/screens/welcome_screen.dart';
import 'package:zuukafood/widgets/text_field_signup.dart';

class SignUp extends StatefulWidget {
  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
 @override
 _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  
  RegExp regExp = RegExp(SignUp.pattern);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController passwd = TextEditingController();
  TextEditingController confirmpasswd = TextEditingController();

GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

Future sendData() async{
  
 await  FirebaseFirestore.instance.collection('userData').doc().set({
 'Nome':name.text,
 'E-mail':email.text,
 'Endereço':address.text,
 'Telefone':phone.text,
 'Senha':passwd.text,
 'Confime Sua Senha':confirmpasswd.text
  });
}




  void validation(){
    if(name.text.trim().isEmpty|| name.text.trim()==null) {
      globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Você se esqueceu de inserir seu nome'
          ),
        ),
      );
      return;
    }
    if(email.text.trim().isEmpty|| email.text.trim()==null) {
      globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Você se esqueceu de inserir seu e-mail'
          ),
        ),
      );
      return;
    }
    else if(!regExp.hasMatch(email.text)){
      globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Opa! o seu e-mail não é valido, insira um e-mail válido'
          ),
        ),
      );
      return;
    }
    if(address.text.trim().isEmpty|| address.text.trim()==null) {
      globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Você se esqueceu de inserir seu endereço'
          ),
        ),
      );
      return;
    }
    if(passwd.text.trim().isEmpty|| passwd.text.trim()==null) {
      globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Você se esqueceu de definir uma senha'
          ),
        ),
      );
      return;
    }
    if(confirmpasswd.text.trim().isEmpty|| confirmpasswd.text.trim()==null) {
      globalKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Falta pouco confirme sua senha'
          ),
        ),
      );
      return;
    }
  }


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
            controller: name,
          ),
          MyTextFieldSignUp(
              hintText:"E-mail" ,
              obscureText: false,
              controller: email,
          ),
          MyTextFieldSignUp(
              hintText:"Endereço" ,
              obscureText: false,
              controller: address,
          ),
          MyTextFieldSignUp(
              hintText:"Telefone",
              obscureText: false,
              controller: phone,
          ),
          MyTextFieldSignUp(
              hintText:"Senha",
              obscureText: true,
              controller: passwd,
          ),
          MyTextFieldSignUp(
              hintText:"Confirme Sua Senha",
              obscureText: true,
              controller: confirmpasswd,
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
                   onPressed: (){ validation();
                     
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