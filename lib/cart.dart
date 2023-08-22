import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            "Cart",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        const ListTile(
          title: Text("Çikolatalı gofret"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("7 TL"),
        ),
        const ListTile(
          title: Text("Karpuz"),
          subtitle: Text("2 kg x 3.50 TL"),
          trailing: Text("7 TL"),
        ),
        const ListTile(
          title: Text("Su"),
          subtitle: Text("10 litre x 1.5TL"),
          trailing: Text("15 TL"),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[400],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "29 TL",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[400],
            ),
            child: const Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
