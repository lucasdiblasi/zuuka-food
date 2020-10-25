import 'package:flutter/material.dart';
import 'package:zuukafood/screens/cuppons.dart';
import 'car_items_screen.dart';
import 'home_screen.dart';
import '../sidebar/sidebar.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {'title': 'Zuuka Food', 'screen': HomePage()},
    {'title': 'Pedidos', 'screen': CarItemsScreen()},
    {'title': 'Cupons', 'screen':Cupons()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }
 
  @override 
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
        title: Text(
          _screens[_selectedScreenIndex]['title'],
          style: TextStyle(
            color: Colors.white
            ),
        ),
         brightness: Brightness.light,
        actions:<Widget>[
             IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: SideBar(),
      ),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(contex).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('Home')
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            title: Text('Pedidos')
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.assistant),
           title: Text('Cupons')
           ),
        ],
      ),
      );
    }
  }