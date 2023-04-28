import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAbout extends StatefulWidget {
  const AppAbout({Key? key}) : super(key: key);

  @override
  State<AppAbout> createState() => _AppAboutState();
}

class _AppAboutState extends State<AppAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Test"),
    );
  }
}
