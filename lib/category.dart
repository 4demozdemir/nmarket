import 'package:flutter/material.dart';
import 'package:nmarket/productCart.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({
    super.key,
    required this.category,
  });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> showList = [];
  @override
  void initState() {
    super.initState();

    if (widget.category == "Temel Gida") {
      showList = <Widget>[
        productCart(pName: "Zeytin", price: "250 TL ", proImg: "https://cdn.pixabay.com/photo/2018/06/10/17/40/olives-3466908_1280.jpg"),
        productCart(pName: "Çavdar ekmek", price: "15 TL ", proImg: "https://cdn.pixabay.com/photo/2020/06/16/15/48/bread-5306324_1280.jpg"),
        productCart(pName: "Nohut", price: "55 TL ", proImg: "https://cdn.pixabay.com/photo/2017/04/18/20/59/chickpeas-2240388_1280.jpg"),
        productCart(pName: "Pilav", price: "50 TL ", proImg: "https://cdn.pixabay.com/photo/2014/10/22/18/43/rice-498688_1280.jpg"),
      ];
    } else if (widget.category == "Şekerleme") {
      showList = <Widget>[
        productCart(pName: "Şeker", price: "20 TL ", proImg: "https://cdn.pixabay.com/photo/2017/01/04/19/41/candes-1952997_1280.jpg"),
        productCart(pName: "Turta", price: "60 TL ", proImg: "https://cdn.pixabay.com/photo/2018/07/01/19/50/muffin-3510308_1280.jpg"),
      ];
    } else if (widget.category == "İçecekler") {
      showList = <Widget>[
        productCart(pName: "türk Kahvesi", price: "70 TL ", proImg: "https://cdn.pixabay.com/photo/2012/02/23/09/16/coffee-15994_1280.jpg"),
        productCart(pName: "Bira", price: "45 TL ", proImg: "https://cdn.pixabay.com/photo/2014/08/10/18/06/beers-414914_1280.jpg"),
        productCart(pName: "Portakal suyu", price: "30 TL ", proImg: "https://cdn.pixabay.com/photo/2016/12/20/21/43/orange-1921548_1280.jpg"),

      ];
    } else if (widget.category == "Temizlik") {
      showList = <Widget>[
      productCart(pName: "Bulaşık Deterjanı", price: "35 TL ", proImg: "https://media.istockphoto.com/id/172857643/tr/foto%C4%9Fraf/a-bottle-of-green-dishwashing-detergent.jpg?s=612x612&w=0&k=20&c=BikgN6YPsO3m-Hwji1iSjkFmVGG_fYJsRVQfC14DJN4="),
      productCart(pName: "Çamaşır Deterjanı", price: "120 TL ", proImg: "https://media.istockphoto.com/id/679398414/tr/foto%C4%9Fraf/%C3%A7ama%C5%9F%C4%B1rhane-deterjan-%C5%9Fi%C5%9Fesi-beyaz-arka-plan-%C3%BCzerinde.jpg?s=612x612&w=0&k=20&c=GF_oksQONElNGvz_65nnA_QNm96NKQPKPDXQK1dHJuI="),
      ];
    }
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: showList,
    );
  }
}



