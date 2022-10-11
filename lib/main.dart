import 'package:flutter/material.dart';
import 'package:fooderlich/MyInheritedWidget.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // runApp(const Fooderlich());
  runApp(MyInheritedWidget(
      myInheritedData: MyInheritedData(isFavorite: false),
      child: const Fooderlich()));
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
        title: 'Fooderlich',
        theme: theme,
        // home: const Home(),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => TabManager(),
            ),
            ChangeNotifierProvider(
              create: (context) => GroceryManager(),
            ),
          ],
          child: const Home(),
        ));
  }
}
