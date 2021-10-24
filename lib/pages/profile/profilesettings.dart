import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    Key? key,
    required this.size,
    // ignore: non_constant_identifier_names
    required this.Ficon,
    required this.setting,
    // ignore: non_constant_identifier_names
    required this.Gicon,
  }) : super(key: key);

  final Size size;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final Ficon;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final Gicon;
  final String setting;

  Widget? iconChecker() {
    if (Ficon == null) {
      Icon icon = Gicon;
      return icon;
    } else if (Gicon == null) {
      FaIcon icon = Ficon;
      return icon;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0.0, left: 8),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey,
                      // spreadRadius: .0,
                      offset: Offset(0, 2))
                ],
              ),
              // ignore: prefer_const_constructors
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: iconChecker(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                setting,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    letterSpacing: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
