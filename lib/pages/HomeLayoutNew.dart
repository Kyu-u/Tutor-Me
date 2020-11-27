import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:tutor_me/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().user,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: HexColor("6088f6"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Aji Rindra',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: HexColor("e6e6e6")),
                  ),
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/night-sky1.jpg'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 75.0, 0.0),
              child: Container(
                width: 300,
                height: 70,
                // color: Colors.grey,
                child: Text(
                  'Find Your Perfect Tutor',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: HexColor("e6e6e6")),
                ),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 900,
                  height: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: HexColor("e6e6e6")),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 20.0, 165.0, 0.0),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: HexColor("6088f6")),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 160,
                                  height: 200,
                                  color: Colors.grey,
                                  child: Image(
                                    image: AssetImage('assets/images/bayu.JPG'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // quotes.map((quote) =>
                                //     Text('${quote.text}' '${quote.author}'))
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text(
                                            'Bayu Adjie Sidharta',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: HexColor("6088f6")),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RatingBar(
                                            initialRating: 4,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 15,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            onRatingUpdate: null,
                                            ratingWidget: RatingWidget(
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: HexColor("F7C646"),
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: HexColor("F7C646"),
                                                ),
                                                full: Icon(
                                                  Icons.star,
                                                  color: HexColor("F7C646"),
                                                )),
                                          ),
                                          Text(
                                            '-',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: HexColor("6088f6")),
                                          ),
                                          Text(
                                            'Kimia 1',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: HexColor("6088f6")),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 160,
                                  height: 200,
                                  color: Colors.grey,
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/gerald.JPG'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Christoffer Ivano',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: HexColor("6088f6")),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RatingBar(
                                            initialRating: 4,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 15,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 0.0),
                                            onRatingUpdate: null,
                                            ratingWidget: RatingWidget(
                                                empty: Icon(
                                                  Icons.star_border,
                                                  color: HexColor("F7C646"),
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: HexColor("F7C646"),
                                                ),
                                                full: Icon(
                                                  Icons.star,
                                                  color: HexColor("F7C646"),
                                                )),
                                          ),
                                          Text(
                                            '-',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: HexColor("6088f6")),
                                          ),
                                          Text(
                                            'Matematika 1',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 11,
                                                color: HexColor("6088f6")),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              height: 70,
                              child: FloatingActionButton(
                                heroTag: "btn1",
                                child: Icon(
                                  Icons.home,
                                  size: 45,
                                ),
                                backgroundColor: HexColor("6088f6"),
                                onPressed: () {
                                  print('Beck');
                                },
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              child: FloatingActionButton(
                                heroTag: "btn2",
                                child: Icon(
                                  Icons.search,
                                  size: 60,
                                ),
                                backgroundColor: HexColor("6088f6"),
                                onPressed: () {
                                  print('Beck');
                                },
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 70,
                              child: FloatingActionButton(
                                heroTag: "btn3",
                                child: Icon(
                                  Icons.settings,
                                  size: 45,
                                ),
                                backgroundColor: HexColor("6088f6"),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/settings');
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
