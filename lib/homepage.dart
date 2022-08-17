import 'package:flutter/material.dart';
import 'package:pdfexamplecreation/pdfpages.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pdf(),
                ),
              );
            },
            child: Text('Click to grenerate PDF'),
          ),
        ),
      ),
    );
  }
}
