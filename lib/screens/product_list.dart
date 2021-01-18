import 'package:ecommerce/screens/product_detail.dart';
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
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 85,
    },
    {
      "name": "Red Planter",
      "picture": "assets/images/i2.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Pot Planter",
      "picture": "assets/images/i3.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/i4.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Grow Planter",
      "picture": "assets/images/i5.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/i6.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/pn2.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/i7.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/p5.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
      "price": 50,
    },
    {
      "name": "Flower planter",
      "picture": "assets/images/pp1.png",
      "description":
          "This is a test product description. If cacheWidth or cacheHeight are provided, it indicates to the engine that the image must be decoded at the specified size. The image will be rendered to the constraints of the layout or width and height regardless of these parameters. These parameters are primarily intended to reduce the memory usage of ImageCache.",
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
            productDescription: productList[index]['description'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final productName;
  final productImage;
  final productDescription;
  final productPrice;

  SingleProd({
    this.productName,
    this.productImage,
    this.productDescription,
    this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetails(
            productName: productName,
            productImage: productImage,
            productDescription: productDescription,
            productPrice: productPrice,
          ),
        ),
      ),
      child: Card(
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
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
