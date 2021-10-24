import 'package:flutter/material.dart';

class CustomerCare extends StatefulWidget {
  const CustomerCare({Key? key}) : super(key: key);

  @override
  _CustomerCareState createState() => _CustomerCareState();
}

class _CustomerCareState extends State<CustomerCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // backwardsCompatibility: true,
      ),
      body: const Center(
        child: Text("CustomerCare"),
      ),
    );
  }
}
