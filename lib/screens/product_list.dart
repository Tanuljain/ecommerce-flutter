import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Rich Planter",
      "picture": "assets/images/i1.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Planter",
      "picture": "assets/images/i2.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Pot Planter",
      "picture": "assets/images/i3.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/i4.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Grow Planter",
      "picture": "assets/images/i5.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/i6.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/pn2.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/i7.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/p5.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/pp1.png",
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProd(
            productName: productList[index]['name'],
            productImage: productList[index]['picture'],
            // productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final productName;
  final productImage;
  // final productOldPrice;
  final productPrice;

  SingleProd({
    this.productName,
    this.productImage,
    // this.productOldPrice,
    this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[         
          Image.asset(productImage, height: 130, width: 100),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$$productPrice",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
