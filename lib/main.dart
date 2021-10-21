import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customshapes/card.dart';
import 'customshapes/customedcircularshapedwidget.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customshapes/innercircleobject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  final cardTitles = TextStyle(
    fontSize: 10,
    wordSpacing: 2,
    letterSpacing: .5,
    fontWeight: FontWeight.bold,
    color: Color(0xFFEDEDED).withOpacity(0.75),
  );

  final customerDetails = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Color(0xFFEDEDED).withOpacity(1),
  );

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xFFC4C3C8),//#C4C3C8 //FDFDFD
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 30, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffF6F6F6).withOpacity(1.0),
                  radius: size.width / 19,
                  child: Opacity(
                    opacity: 1,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFEFEFE),
                      radius: size.width / 21,
                      child: CustomPaint(
                        size: Size(
                            size.width / 40,
                            (size.height / 83.3 * 1.1925696594427244)
                                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: InnerCircleObject(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Money Transfer",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 9,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DottedBorder(
                    child: Container(
                      height: size.height / 20,
                      width: size.width / 1.9,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            shadowColor:
                                MaterialStateProperty.all(Color(0xFFe7f0fd)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFe7f0fd))),
                        onPressed: () {
                          setState(() {
                            print("New Card Added!");
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 4.0),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: Color(0xFF5874c3),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    'ADD NEW CARD',
                                    style: TextStyle(
                                        color: Color(0xFF5874c3),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    borderType: BorderType.RRect,
                    radius: Radius.circular(20),
                    dashPattern: [2, 2, 2, 2, 2, 2],
                    color: Color(0xFF5874c3),
                    strokeWidth: 2,
                  ),
                  // SizedBox(width: size.width / 35),
                  CircleAvatar(
                    backgroundColor: Color(0xffF6F6F6).withOpacity(1.0),
                    radius: size.width / 19,
                    child: Opacity(
                      opacity: 1,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFEFEFE),
                        radius: size.width / 21,
                        child: CustomPaint(
                          size: Size(
                              size.width / 40,
                              (size.height / 83.3 * 1.1925696594427244)
                                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: InnerCircleObject(),
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffF6F6F6).withOpacity(1.0),
                    radius: size.width / 19,
                    child: Opacity(
                      opacity: 1,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(180 / 360),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFEFEFE),
                          radius: size.width / 21,
                          child: CustomPaint(
                            size: Size(
                                size.width / 40,
                                (size.height / 83.3 * 1.1925696594427244)
                                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                            painter: InnerCircleObject(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                CustomPaint(
                  size: Size(
                      MediaQuery.of(context).size.height / 2,
                      (MediaQuery.of(context).size.width / 2.30 * 1)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainterCard(),
                ),
                Positioned(
                  top: 17,
                  right: 30,
                  child: Text(
                    '\$2,687.00',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 25,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CARD NUMBER",
                          style: cardTitles,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "3829 4820 4629 5025",
                          style: customerDetails,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 125,
                  left: 25,
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CARD HOLDER NAME",
                              style: cardTitles,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Kamrul Islam",
                              style: customerDetails,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "VALID",
                              style: cardTitles,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "05/22",
                              style: customerDetails,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: MediaQuery.of(context).size.width / 6.5,
                  child: Image.asset(
                    "assets/images/image.png",
                    // scale: Me,
                    scale: MediaQuery.of(context).size.height / 120,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 70),
                Text(
                  "Kamrul Islam",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 70),
                Text(
                  "\$50.00",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffC4C3C8).withOpacity(1.0),
                    radius: MediaQuery.of(context).size.width / 20,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          print("Calendar Opened!");
                        });
                      },
                      child: FaIcon(
                        FontAwesomeIcons.solidCalendarAlt,
                        size: MediaQuery.of(context).size.width / 25,
                        color: Color(0xff656766).withOpacity(1.0),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF0735B3),
                        borderRadius: BorderRadius.circular(27)),
                    width: size.width / 1.5,
                    height: size.height / 15,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.0),
                            ),
                          ),
                          shadowColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF0735B3))),
                      onPressed: () {
                        setState(() {
                          print("Continued!");
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 1, bottom: 1, left: 20.0, right: 20.0),
                        child: Center(
                          child: Text(
                            'CONTINUE',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
