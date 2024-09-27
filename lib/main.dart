import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/controller/menu_controller.dart';
import 'package:flutter_responsive_admin_panel/screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_responsive_admin_panel/controller/menu_controller.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,

      ),
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => MenuAppController(),
            ),
          ],
          child: const HomeScreen()),
    );
  }
}
