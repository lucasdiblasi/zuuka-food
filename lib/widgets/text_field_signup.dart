import 'package:flutter/material.dart';

class MyTextFieldSignUp extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  MyTextFieldSignUp({
    @required this.hintText,
    @required this.obscureText,
  });

  
  @override 
  Widget build(BuildContext context) {
     return TextFormField(
       obscureText: obscureText,
       style: TextStyle(color: Colors.white),
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
}
