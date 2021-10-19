import 'package:flutter/material.dart';
import 'customshapes/customedcircularshapedwidget.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CustomedCircularShapedWidget(),
              Text("Money Transfer"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: DottedBorder(
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 35.0, right: 35.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 30),
                                ),
                              ),
                              Text(
                                'ADD NEW CARD',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(20),
                  dashPattern: [2, 2, 2, 2, 2, 2],
                ),
              ),
              CustomedCircularShapedWidget(),
              Column(
                children: [
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(180 / 360),
                    child: CustomedCircularShapedWidget(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
