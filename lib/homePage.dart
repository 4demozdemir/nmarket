import 'package:flutter/material.dart';
import 'package:nmarket/products.dart';
import 'package:nmarket/shoppingCart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _aktifIcerikNo = 0;
  late List<Widget> _products;

  @override
  void initState() {
    super.initState();

    _products = [
      const Products(),
      const Cart(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme:IconThemeData(
          color: Colors.red[400]
        ) ,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Come flying",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _products[_aktifIcerikNo],
      drawer: const DrawerPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.red[400],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Adem Özdemir"),
            accountEmail: const Text("teknik@nc.com.tr"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/11/16/09/34/matrix-2953883_1280.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
          ),
          ListTile(title: const Text("Orders"), onTap: () {}),
          ListTile(title: const Text("Discounts"), onTap: () {}),
          ListTile(title: const Text("Settings"), onTap: () {}),
          ListTile(title: const Text("Sign out"), onTap: () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
