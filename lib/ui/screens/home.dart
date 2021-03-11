import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_chords/ui/screens/login.dart';
import 'package:my_chords/ui/shared/button.dart';
import 'package:my_chords/utils/assets.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentCarouselItem = 0;

  @override
  void initState() {
    super.initState();
  }

  onPageChangedCallBack(int index, reason) {
    setState(() {
      _currentCarouselItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map> carouselText = [
      {
        'image': Assets.CAROUSEL_ONE,
        'title': 'Enjoy Music In Real Time',
        'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet lectus ac sapien convallis luctus quis at sem. Maecenas lacus libero, tincidunt'
      },
      {
        'image': Assets.CAROUSEL_TWO,
        'title': 'Create Your Own Music List',
        'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet lectus ac sapien conv',
      },
      {
        'image': Assets.CAROUSEL_THREE,
        'title': 'Real Time Music Updates',
        'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet lectus ac sapien conv'
      },
      {
        'image': Assets.CAROUSEL_FOUR,
        'title': 'Share Your Favourites Tracks',
        'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet lectus ac sapien conv'
      },      
    ];
    final List<Widget> carouselItems = carouselText.map((item) {
      return Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              item['image'],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF0f101a).withOpacity(0.0),
                        Color(0xFF0f101a).withOpacity(0.05),
                        Color(0xFF0f101a).withOpacity(0.5),
                        Color(0xFF0f101a).withOpacity(0.99)
                      ],
                      stops: [
                        0.01,
                        0.03,
                        0.1,
                        0.4,
                      ])),
              width: MediaQuery.of(context).size.width,
              height: 360,
              padding: EdgeInsets.only(top: 70, left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    item['title'],
                    style: TextStyle(fontSize: 25, color: Color(0xffc7c9d1), fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,                      
                    ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '${item['desc']}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }).toList();

    final List<Widget> carouselIndicators = carouselText.asMap().keys.map((index) {
      return Container(
        width: 40.0,
        height: 3.6,
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0, left: 0),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(0)),
            color: _currentCarouselItem == index
                ? Theme.of(context).accentColor
                : Color(0xffc7c9d1)),
      );
    }).toList();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          CarouselSlider(
            items: carouselItems,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: onPageChangedCallBack,
            ),
          ),

          Positioned(
            bottom: 40,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: carouselIndicators,
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerRight,
                      child: Button(
                        'Continue',
                        // width: 365,
                        // height: 46.0,
                        // bgColor: Color(0xFFE31B23),
                        onPressedAction: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen())
                        ),
                      ),
                  ),

                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
