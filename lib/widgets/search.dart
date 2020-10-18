import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
      child: TextField(

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.purple,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.purple,
          ),
          fillColor: Colors.white,
          suffixIcon: Icon(Icons.sort,color: Colors.purple,),
          hintStyle: new TextStyle(color: Colors.purple[100], fontSize: 18),
          hintText: "Qual será seu pedido hoje?",
        ),
      ),
    );
  }
}