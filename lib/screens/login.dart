import 'package:flutter/material.dart';
import 'package:zuukafood/screens/tabs_screen.dart';
import 'package:zuukafood/screens/welcome_screen.dart';

class Login extends StatelessWidget {
  Widget textField({
    @required String hintText,
    @required IconData icon,
    @required Color iconColor,
    @required bool obscureText
  }){
    return TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(  
                prefixIcon: Icon(icon, color:iconColor),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white)
                ),
              ),
              obscureText: obscureText
            );
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Colors.white
          ),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomeScreen()
                        )
                        );
          },
        ),  
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text('Entrar', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 40, 
                fontWeight: FontWeight.bold
              )
              ),
            ),
          Column(  
            children: [
              textField(
                hintText: "E-mail",
                icon: Icons.person_outline,
                iconColor: Colors.white,
                obscureText: false
              ),
              SizedBox(height: 30,),
              textField(
                hintText: "Senha",
                icon: Icons.lock_outline,
                iconColor: Colors.white,
                obscureText: true
              ),          
            ],
          ),
          Container(
              height: 45,
              width: 300,
              child: RaisedButton(
                color: Colors.white,
               shape: RoundedRectangleBorder( 
                borderRadius: BorderRadius.circular(30)
               ),
               onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => TabsScreen()
                 )
                 );
                 },
               child: Text(
                 'Entrar',
                style: TextStyle(
                 color: Colors.orange,
                 fontSize: 16
                ) 
                ),
               
              ),
            ),
            Row(  
              children: [
                Text('Não tem cadastro?  ', 
                style: TextStyle(
                  color: Colors.white
                  ),
                  textAlign: TextAlign.center
                  ),
                Text(' Registre Aqui', 
                style: TextStyle(
                  color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                  )
              ],
            )
          ],  
        ),
      )
    );
  }
}