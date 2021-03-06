import 'package:finance_mobile_banking_app_ui/customshapes/innercircleobject.dart';
import 'package:finance_mobile_banking_app_ui/pages/profile/profilesettings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5),
        child: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
        ),
      ),
      // PreferredSize(
      //   preferredSize: Size.fromHeight(50.0),
      //   child: AppBar(
      //     foregroundColor: Colors.white,
      //     backgroundColor: Colors.grey.shade200,
      //     shadowColor: Colors.white,
      //     elevation: 0,
      //     leading: Row(
      //       children: [
      //         IconButton(
      //           icon: Icon(Icons.arrow_back_ios_new_outlined),
      //           onPressed: () => Navigator.of(context).pushNamed('/Dashboard'),
      //           color: Colors.amber,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0.0, left: 30, right: 35),
        child: Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffF6F6F6).withOpacity(1.0),
                      radius: size.width / 19,
                      child: Opacity(
                        opacity: 1,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xFFFEFEFE),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            "Profile",
                            // ignore: prefer_const_constructors
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
              ),
              Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: MediaQuery.of(context).size.width / 6.0,
                            child: Image.asset(
                              "assets/images/image.png",
                              // scale: Me,
                              scale: MediaQuery.of(context).size.height / 150,
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 70),
                          const Text(
                            "Kamrul Islam",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 70),
                          const Text(
                            "md.kamrul.islam@g.bracu.ac.bd",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.grey),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 20),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    //1
                    right: 20,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 50.0,
                      backgroundColor: const Color(0xFFfe8700),
                    ),
                  ),
                  Positioned(
                    //2
                    left: 75,
                    top: 20,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 75.0,
                      backgroundColor: const Color(0xFF0939ba),
                    ),
                  ),
                  Positioned(
                    //3
                    left: 10,
                    top: 60,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 60.0,
                      backgroundColor: const Color(0xFFda77ea),
                    ),
                  ),
                  Positioned(
                    //4
                    top: 45,
                    right: 80,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 80.0,
                      backgroundColor: const Color(0xFF32d4d7),
                    ),
                  ),
                  Positioned(
                    //5
                    bottom: 130,
                    right: 10,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 50.0,
                      backgroundColor: const Color(0xFF22b07d),
                    ),
                  ),
                  Positioned(
                    //6
                    right: 50,
                    bottom: 105,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 120.0,
                      backgroundColor: const Color(0xFFffbf13),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    bottom: 100,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 70.0,
                      backgroundColor: const Color(0xFF22b07d),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed("/Password");
                        });
                      },
                      child: ProfileSettings(
                        size: size,
                        Ficon: FaIcon(FontAwesomeIcons.key,
                            size: size.width / 25,
                            color: const Color(0xFFffbf13)),
                        setting: 'Password',
                        Gicon: null,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed("/Languages");
                        });
                      },
                      child: ProfileSettings(
                        size: size,
                        Ficon: null,
                        setting: 'Languages',
                        Gicon: Icon(Icons.g_translate,
                            size: size.width / 25,
                            color: const Color(0xFF22b07e)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileSettings(
                          size: size,
                          Ficon: FaIcon(FontAwesomeIcons.fingerprint,
                              size: size.width / 25,
                              color: const Color(0xFF7953df)),
                          setting: 'Touch ID',
                          Gicon: null,
                        ),
                        Switch(
                          value: true,
                          onChanged: (value) {
                            setState(() {
                              value = false;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileSettings(
                          size: size,
                          Ficon: null,
                          setting: 'Face ID',
                          Gicon: Icon(Icons.portrait,
                              size: size.width / 20,
                              color: const Color(0xFF32d5d7)),
                        ),
                        Switch(
                          value: true,
                          onChanged: (value) {
                            setState(() {
                              value = false;
                            });
                          },
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed("/AppInfo");
                        });
                      },
                      child: ProfileSettings(
                        size: size,
                        Ficon: null,
                        setting: 'App\nInformation',
                        Gicon: Icon(Icons.info,
                            size: size.width / 20,
                            color: const Color(0xFFfd8700)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed("/CustomerCare");
                        });
                      },
                      child: ProfileSettings(
                        size: size,
                        Ficon: null,
                        setting: 'Customer Care',
                        Gicon: Icon(Icons.headphones,
                            size: size.width / 20,
                            color: const Color(0xFFda77eb)),
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
