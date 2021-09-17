import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:provider_mobx/src/home/page/home_page.dart';
import 'package:provider_mobx/src/store/counter/counter_store.dart';
import 'package:provider_mobx/src/store/theme/theme_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => ThemeStore()),
        Provider(create: (_) => CounterStore())
      ],
      child: Consumer<ThemeStore>(
        builder: (_, theme, __) => Observer(
          builder: (_) => MaterialApp(
            title: 'Provider Mobx',
            theme: ThemeData(
              brightness: theme.isDark ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.blue,
            ),
            home: HomePage(title: 'Provider Mobx'),
          ),
        ),
      ),
    );
  }
}
