import 'package:flutter/material.dart';

class PopularRestaurantWidget extends StatefulWidget {
  @override
  _PopularRestaurantWidgetState createState() => _PopularRestaurantWidgetState();
}

class _PopularRestaurantWidgetState extends State<PopularRestaurantWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularRestaurantTitle(),
          Expanded(
            child: PopularRestaurantItems(),
          )
        ],
      ),
    );
  }
}

class PopularRestaurantTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String slug;

  PopularRestaurantTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.rating,
      @required this.numberOfRating,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: double.infinity,
                              padding: EdgeInsets.only(right: 5, top: 5),
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 25.0,
                                        offset: Offset(0.0, 0.75),
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.purple,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              'assets/images/popular_restaurant/' +
                                  imageUrl +
                                  ".png",
                              width: 130,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              child: Icon(
                                Icons.near_me,
                                color: Colors.purple,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.purple,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("($numberOfRating)",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularRestaurantTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popluar Restaurants",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularRestaurantItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularRestaurantTiles(
            name: "Fried Egg",
            imageUrl: "ic_popular_restaurant_1",
            rating: '4.9',
            numberOfRating: '200',
            slug: "fried_egg"),
        PopularRestaurantTiles(
            name: "Mixed Vegetable",
            imageUrl: "ic_popular_restaurant_3",
            rating: "4.9",
            numberOfRating: "100",
            slug: ""),
        PopularRestaurantTiles(
            name: "Salad With Chicken",
            imageUrl: "ic_popular_restaurant_4",
            rating: "4.0",
            numberOfRating: "50",
            slug: ""),
        PopularRestaurantTiles(
            name: "Mixed Salad",
            imageUrl: "ic_popular_restaurant_5",
            rating: "4.00",
            numberOfRating: "100",            
            slug: ""),
        PopularRestaurantTiles(
            name: "Red meat,Salad",
            imageUrl: "ic_popular_restaurant_2",
            rating: "4.6",
            numberOfRating: "150",            
            slug: ""),
        PopularRestaurantTiles(
            name: "Mixed Salad",
            imageUrl: "ic_popular_restaurant_5",
            rating: "4.00",
            numberOfRating: "100",            
            slug: ""),
        PopularRestaurantTiles(
            name: "Potato,Meat fry",
            imageUrl: "ic_popular_restaurant_6",
            rating: "4.2",
            numberOfRating: "70",            
            slug: ""),
        PopularRestaurantTiles(
            name: "Fried Egg",
            imageUrl: "ic_popular_restaurant_1",
            rating: '4.9',
            numberOfRating: '200',            
            slug: "fried_egg"),
        PopularRestaurantTiles(
            name: "Red meat,Salad",
            imageUrl: "ic_popular_restaurant_2",
            rating: "4.6",
            numberOfRating: "150",            
            slug: ""),
      ],
    );
  }
}

