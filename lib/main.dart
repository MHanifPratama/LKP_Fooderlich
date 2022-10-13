import 'package:flutter/material.dart';
import 'package:fooderlich/MyInheritedWidget.dart';
import 'package:provider/provider.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import '../models/models.dart ';

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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => GroceryManager(),
          ),
          ChangeNotifierProvider(create: (context) => TabManager())
        ],
        child: const Home(),
      ),
    );
  }
}
