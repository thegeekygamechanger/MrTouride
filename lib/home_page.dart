
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mrtouride/detail.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello Mr.Touride',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Inspiration',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Most viewed places',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),


                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,

                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/card1.png',
                              width: 167.0,
                              height: 247.0,
                            ),

                          ),
                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/card2.png',
                              width: 167.0,
                              height: 247.0,
                            ),

                          ),

                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/card3.png',
                              width: 167.0,
                              height: 247.0,
                            ),

                          ),
                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/card4.png',
                              width: 167.0,
                              height: 247.0,
                            ),

                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(

                      'Top trending vlogs',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),


                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 175,

                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/videocard1.png',
                              width: 335.0,
                              height: 190.0,
                            ),

                          ),
                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/videocard2.png',
                              width: 335.0,
                              height: 190.0,
                            ),

                          ),
                          InkWell(
                            //  height: 150,
                            // margin: EdgeInsets.all(10.0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailScreen ()),
                              );
                            },
                            child: Image.asset(
                              'assets/image/videocard3.png',
                              width: 335.0,
                              height: 190.0,
                            ),

                          ),


                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}