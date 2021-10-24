import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    Key? key,
    required this.size,
    required this.Ficon,
    required this.setting,
  }) : super(key: key);

  final Size size;
  final FaIcon Ficon;
  final Icon GIcon;
  final String setting;

  // Icon iconChecker(){
  //   if(Ficon == null){
  //     Icon icon = GIcon;
  //     return icon;
  //     }
  //     else if(GIcon == null){
  //     FaIcon icon = Ficon;
  //     return icon;
  //     }
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
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
          child: CircleAvatar(
            backgroundColor: Colors.white,
            // child: ,
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            setting,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, letterSpacing: 0.5),
          ),
        ),
      ],
    );
  }
}
