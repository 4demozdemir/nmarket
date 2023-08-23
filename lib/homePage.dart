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
