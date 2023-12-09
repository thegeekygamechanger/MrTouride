

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  //static const String path = "lib/src/pages/hotel/details.dart";
  final String image = "assets/image/tajdeatil.png";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              foregroundDecoration: const BoxDecoration(color: Colors.black26),
              height: 450,
              child: Image.asset(image, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),

                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),

                    const Spacer(),

                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Taj Mahal",
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                const Text.rich(
                                  TextSpan(children: [

                                    TextSpan(text: "Agra, Uttar Pradesh")
                                  ]),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: const Text(
                            "Feel It",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          onPressed: () {
                            launch('https://developer.bhaptics.com/application/upSOC6r1v4rRJgcFauTL');
                          },
                        ),

                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: const Text(
                            "MR/VR",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          onPressed: () {
                            launch('https://developer.oculus.com/manage/applications/8991161504287471/');
                          },
                        ),

                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        "Description".toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      ),


                      const SizedBox(height: 10.0),
                      const Text(
                        "The Taj Mahal, is an Islamic ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14.0),
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
                          'assets/image/tajmahalvlog1.png',
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
                          'assets/image/tajmahalvlog2.png',
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
                          'assets/image/tajmahalvlog3.png',
                          width: 335.0,
                          height: 190.0,
                        ),

                      ),


                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'View more places',
                  style:
                  TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
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
                          'assets/image/tajmvp1.png',
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
                          'assets/image/tajmvp2.png',
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
                          'assets/image/tajmvp3.png',
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
                          'assets/image/tajmvp4.png',
                          width: 167.0,
                          height: 247.0,
                        ),

                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,

            ),
          ),

        ],
      ),
    );
  }
}