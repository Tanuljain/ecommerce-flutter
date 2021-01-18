import 'package:ecommerce/screens/onBoarding.dart';
import 'package:flutter/material.dart';
import './product_list.dart';

class Product extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => OnboardingScreen()),
              ),
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 30,
              ),
            ),
            Icon(
              Icons.apps,
              color: Colors.black,
              size: 25,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      'Choose ',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    Text(
                      'Device',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    minWidth: 5,
                    child: Icon(
                      Icons.search,
                      color: Colors.black45,
                      size: 25,
                    ),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Colors.black45,
                    size: 30,
                  ),
                  RaisedButton.icon(
                    color: Colors.black,
                    padding: EdgeInsets.only(right: 10, left: 10),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart,
                        size: 20, color: Colors.white70),
                    label: Text('Cart',
                        style:
                            TextStyle(fontSize: 13.0, color: Colors.white70)),
                  ),
                ],
              ),
            ),
            new Expanded(
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
