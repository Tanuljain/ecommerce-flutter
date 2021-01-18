import 'package:ecommerce/screens/product.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final productName;
  final productPrice;
  final productImage;
  final productDescription;
  ProductDetails({
    this.productName,
    this.productPrice,
    this.productImage,
    this.productDescription,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black45,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Product(),
                ),
              ),
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 30,
              ),
            ),
            Icon(
              Icons.favorite,
              color: Colors.black,
              size: 25,
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Image.asset(
                productImage,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "\$$productPrice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                RaisedButton.icon(
                  color: Colors.black,
                  padding: EdgeInsets.only(right: 15, left: 15),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  label: Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white70,
                    ),
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              productDescription,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.black,
        child: Container(
          alignment: AlignmentDirectional.bottomCenter,
          height: 65.0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.transparent,
        onPressed: () => {},
        child: Icon(
          Icons.keyboard_arrow_up,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
