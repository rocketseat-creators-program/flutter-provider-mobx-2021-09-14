import 'package:flutter/material.dart';
import 'package:provider_mobx/src/home/components/counter.dart';
import 'package:provider_mobx/src/shared/components/switch_theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            SwitchThemeApp(),
            Counter(),
          ],
        ));
  }
}
