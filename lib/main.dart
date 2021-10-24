import 'package:finance_mobile_banking_app_ui/pages/dashboard.dart';
import 'package:finance_mobile_banking_app_ui/pages/home.dart';
import 'package:finance_mobile_banking_app_ui/pages/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pages/dashboard.dart';
import 'pages/profile/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'pages/profile/profile_screens/languages.dart';
import 'pages/profile/profile_screens/password.dart';
import 'pages/profile/profile_screens/appinfo.dart';
import 'pages/profile/profile_screens/customercare.dart';
import 'pages/stat.dart';
import 'pages/wallet.dart';

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
      routes: <String, WidgetBuilder>{
        '/Dashboard': (BuildContext context) => const Dashboard(),
        '/GoogleBottomNavBar': (BuildContext context) =>
            const GoogleBottomNavBar(),

        // *Profile Page Routing
        '/Password': (BuildContext context) => const Password(),
        '/Languages': (BuildContext context) => const Languages(),
        '/AppInfo': (BuildContext context) => const AppInfo(),
        '/CustomerCare': (BuildContext context) => const CustomerCare(),
      },
      home:
          // GoogleBottomNavBar(),
          const Dashboard(),
    );
  }
}

class GoogleBottomNavBar extends StatefulWidget {
  const GoogleBottomNavBar({Key? key}) : super(key: key);

  @override
  _GoogleBottomNavBarState createState() => _GoogleBottomNavBarState();
}

class _GoogleBottomNavBarState extends State<GoogleBottomNavBar> {
  int _selectedIndex = 0;
  var inactiveColor = const Color(0xFF9ba2aa);
  var activeColor = const Color(0xFF0839bc);
  // ignore: non_constant_identifier_names
  static final List _NavScreens = [
    const Home(),
    const Profile(),
    const Wallet(),
    const Stats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _NavScreens.elementAt(_selectedIndex),
      ),
      //bottom nav bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: GNav(
            // rippleColor: Colors.grey.shade300,
            // hoverColor: Colors.grey.shade500,
            gap: 6,
            activeColor: activeColor,
            // duration: Duration(microseconds: 300),
            tabBackgroundColor: Colors.grey.shade200,
            color: inactiveColor,
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.account_balance_wallet,
                text: 'Wallet',
              ),
              GButton(
                icon: FontAwesomeIcons.poll,
                text: 'Stats',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
                // inactiveColor = activeColor;
              });
            },
          ),
        ),
      ),
    );
  }
}
