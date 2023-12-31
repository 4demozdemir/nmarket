// ignore: file_names
import 'package:flutter/material.dart';
import 'package:nmarket/productDetail.dart';

// ignore: camel_case_types
class productCart extends StatelessWidget {
  final String pName;
  final String price;
  final String proImg;
    final bool stoc;
  const productCart({
    Key? key,
    required this.pName,
    required this.price,
    required this.proImg,
    required this.stoc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(
                      name: pName,
                      price: price,
                      pImg: proImg,
                      stoc: stoc,
                    )));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: proImg,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(proImg),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              pName,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              price,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            )
          ],
        ),
      ),
    );
  }
}
