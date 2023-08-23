import 'package:flutter/material.dart';
import 'package:nmarket/category.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
          tabs: const [
            Tab(
              child: Text("Temel Gida"),
            ),
            Tab(
              child: Text("Şekerleme"),
            ),
            Tab(
              child: Text("İçecekler"),
            ),
            Tab(
              child: Text("Temizlik"),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Category(category: "Temel Gida"),
              Category(category: "Şekerleme"),
              Category(category: "İçecekler"),
              Category(category: "Temizlik"),
            ],
          ),
        ),
      ],
    );
  }
}
