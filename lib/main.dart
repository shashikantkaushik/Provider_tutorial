import 'package:flutter/material.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'package:provider_tutorial/provider/favourite_provider.dart';
import 'package:provider_tutorial/provider/opacity_provider.dart';
import 'package:provider_tutorial/provider/theme_changer_provider.dart';
import 'package:provider_tutorial/screens/count_example.dart';
import 'package:provider_tutorial/screens/dark_theme.dart';
import 'package:provider_tutorial/screens/favourite.dart';
import 'package:provider_tutorial/screens/notifyListenerScreen.dart';
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
      ChangeNotifierProvider(
        create: (_) => FavouriteProvider(),),
      ChangeNotifierProvider(
        create: (_) => ThemeChanger(),),


    ],
    child:Builder(

      builder: (BuildContext context){
        final themeChanger= Provider.of<ThemeChanger>(context);
       return MaterialApp(
          themeMode: Provider.of<ThemeChanger>(context).themeMode,
          title: 'Flutter Demo',

          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.red,
            appBarTheme: AppBarTheme(color: Colors.grey)


          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.red,
            iconTheme: IconThemeData(color: Colors.red),
          ),
          home:  NotifiyListenerScreen(),
        );
      },
    ) );

  }
}



