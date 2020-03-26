import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellers_log/services/data_services.dart';
import 'package:travellers_log/variables/colors.dart';
import 'package:travellers_log/widgets/routes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataServices>(
          create: (_) => DataServices(),
        ),
      ],
      child: MaterialApp(
        title: 'Traveller\'s Log',
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        initialRoute: '/home',
        routes: routes,
      ),
    );
  }

  ThemeData buildThemeData() {
    final baseTheme = ThemeData();
    var textTheme = TextTheme(
      subtitle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      display1: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w800,
        color: Colors.black87,
      ),
      display2: TextStyle(
        fontSize: 14.0,
        color: Colors.black87,
      ),
      display3: TextStyle(
        fontSize: 16.0,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
        color: Colors.black87,
      ),
      display4: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w800,
        color: kPrimaryColor,
      ),
      headline: TextStyle(
        color: Colors.black87,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );
    return baseTheme.copyWith(
      brightness: Brightness.light,
      primaryColor: kPrimaryColor,
      accentColor: kAccentColor,
      textTheme: textTheme,
      scaffoldBackgroundColor: kScaffoldBackgroundColor,
    );
  }
}
