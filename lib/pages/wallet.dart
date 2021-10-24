import 'package:finance_mobile_banking_app_ui/pages/dashboard.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(),
      // Center(
      //   child: Text("Wallet"),
      // ),
    );
  }
}
