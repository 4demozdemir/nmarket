import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
    final String name;
    final String price;
    final String pImg;
  final bool stoc;

  const ProductDetail(
      {super.key,
      required this.name,
      required this.price,
      required this.pImg,
      required this.stoc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: pImg,
                child: Image.network(
                  pImg,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Column(
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Harika bir güne başlarken veya keyifli bir mola verirken lezzet dolu bir deneyim için özel kahve karışımımızı denemeye hazır mısınız? Her damlası tutkulu emek ve özenle seçilen kahve çekirdekleri ile hazırlanan ürünümüz, size kahve dünyasının zengin aromalarını sunuyor.",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: stoc ? Colors.red[400] : Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    stoc ? "Sepete Ekle" : "Stokta yok",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
