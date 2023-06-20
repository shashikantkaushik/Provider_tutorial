import 'package:flutter/material.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'package:provider_tutorial/provider/opacity_provider.dart';
import 'package:provider_tutorial/screens/count_example.dart';
import 'package:provider_tutorial/screens/opacity_example.dart';
import 'package:provider_tutorial/stfl_counter.dart';
import 'package:provider_tutorial/stl_counter.dart';
import 'package:provider_tutorial/whyState.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(
        create: (_) => OpacityProvider(),),
      ChangeNotifierProvider(
        create: (_) => CountProvider(),),


    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      home:  OpacityExample(),
    ) );

  }
}

