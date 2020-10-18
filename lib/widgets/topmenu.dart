import 'package:flutter/material.dart';

class TopMenus extends StatefulWidget {
  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TopMenuTiles(name: "Promoção", imageUrl: "ic_sale", page: ""),
          TopMenuTiles(name: "Mercado", imageUrl: "ic_market", page: ""),
          TopMenuTiles(name: "Lanches", imageUrl: "ic_burger", page: ""),
          TopMenuTiles(name: "Pizza", imageUrl: "ic_pizza", page: ""),
          TopMenuTiles(name: "Fit", imageUrl: "ic_fit", page: ""),
          TopMenuTiles(name: "Almoço", imageUrl: "ic_pasta", page: ""),
          TopMenuTiles(name: "Chinesa", imageUrl: "ic_sushi", page: ""),
          TopMenuTiles(name: "Brasileira", imageUrl: "ic_alm", page: ""),
          TopMenuTiles(name: "Bebidas", imageUrl: "ic_soft_drink", page: ""),
          TopMenuTiles(name: "Sobremesa", imageUrl: "ic_ice_cream", page: ""),
        ],
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String page;

  TopMenuTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Colors.white,
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/images/topmenu/' + imageUrl + ".png",
                    width: 24,
                    height: 24,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}