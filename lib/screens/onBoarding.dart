import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utilities/styles.dart';
import './product.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.black45,
                Colors.black54,
                Colors.black87,
                Colors.black
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 35, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: _buildPageIndicator(),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.71,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Modular Planters',
                              style: kTitleStyle,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Designed to form the artificial environment of any plant.',
                              style: kSubtitleStyle,
                            ),
                            SizedBox(height: 30.0),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/i7.png',
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/i5.png',
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Modular Planters',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'CM Sans Serif',
                                  fontSize: 26.0,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Designed to form the artificial environment of any plant..',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'CM Sans Serif',
                                  fontSize: 18.0,
                                  height: 1.2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30.0),
                            Text(
                              'Modular Planters',
                              style: kTitleStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Designed to form the artificial environment of any plant.',
                              style: kSubtitleStyle,
                            ),
                            SizedBox(height: 40.0),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/i9.png',
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.30,
                                width: 300.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: FlatButton(
                              shape: ContinuousRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white70,
                                      width: 2,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(15.0)),
                              // borderRadius: BorderRadius.all(Radius.circular(10))),
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white70,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 60.0,
              width: double.infinity,
              color: Colors.black54,
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Product()),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
