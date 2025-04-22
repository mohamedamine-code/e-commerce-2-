import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int curentWiedget = 0;

  List MyWidget = [shop_page(), cart_page()];
  void toggleWidget(index) {
    setState(() {
      curentWiedget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: Builder(
          builder:
              (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu,color: Colors.white,),
              ),
        ),
      ),
      drawer: Drawer(
        backgroundColor:const Color.fromARGB(215, 20, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: CircleAvatar(
                    radius: 100, // Size of the circle
                    backgroundImage: AssetImage('assets/img/R.png'),
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white, size: 20),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.pop(context); // Close drawer
                    // Navigate or do something
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    'Cart',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Navigate to cart
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.white, size: 20),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Navigate to settings
                  },
                ),
                
              ],
            ),
            ListTile(
                  leading: Icon(Icons.logout, color: Colors.white, size: 20),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Logout logic
                  },
                ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        onTap: (index) {
          toggleWidget(index);
        },
        currentIndex: curentWiedget,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Cart',
          ),
        ],
      ),
      body: MyWidget[curentWiedget],
    );
  }
}
