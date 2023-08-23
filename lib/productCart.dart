


import 'package:flutter/material.dart';

class productCart extends StatelessWidget {
  const productCart({
    Key? key,
    required this.pName,
    required this.price,
    required this.proImg,
  }) : super(key: key);

  final String pName;
  final String price;
  final String proImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
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
          SizedBox(
            height: 8.0,
          ),
          Text(
            pName,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          ),
          SizedBox(
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
    );
  }
}
