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
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 30, right: 35),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
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
                            scale: MediaQuery.of(context).size.height / 120,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 70),
                        Text(
                          "Kamrul Islam",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 22),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 70),
                        Text(
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
                    backgroundColor: Color(0xFFfe8700),
                  ),
                ),
                Positioned(
                  //2
                  left: 75,
                  top: 20,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 75.0,
                    backgroundColor: Color(0xFF0939ba),
                  ),
                ),
                Positioned(
                  //3
                  left: 10,
                  top: 60,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 60.0,
                    backgroundColor: Color(0xFFda77ea),
                  ),
                ),
                Positioned(
                  //4
                  top: 45,
                  right: 80,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 80.0,
                    backgroundColor: Color(0xFF32d4d7),
                  ),
                ),
                Positioned(
                  //5
                  bottom: 130,
                  right: 10,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 50.0,
                    backgroundColor: Color(0xFF22b07d),
                  ),
                ),
                Positioned(
                  //6
                  right: 50,
                  bottom: 105,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 120.0,
                    backgroundColor: Color(0xFFffbf13),
                  ),
                ),
                Positioned(
                  left: 50,
                  bottom: 100,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 70.0,
                    backgroundColor: Color(0xFF22b07d),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ProfileSettings(
                    size: size,
                    icon: FaIcon(FontAwesomeIcons.key,
                        size: size.width / 25, color: Color(0xFFffbf13)),
                    setting: 'Password',
                  ),
                ),
                ProfileSettings(
                  size: size,
                  icon: FaIcon(FontAwesomeIcons.language,
                      size: size.width / 25, color: Color(0xFFffbf13)),
                  setting: 'Password',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
