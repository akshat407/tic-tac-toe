import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/screens/create_room.dart';
import 'package:tic_tac_toe/screens/join_room.dart';
import 'package:tic_tac_toe/screens/main_menu.dart';
import 'package:tic_tac_toe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgcolor,
        textTheme: GoogleFonts.luckiestGuyTextTheme(),
      ),
      routes: {
          MainMenuScreen.routeName:(context)=>const MainMenuScreen(),
          JoinRoomScreen.routeName:(context) => const JoinRoomScreen(),
          CreateRoomScreen.routeName:(context)=>const CreateRoomScreen()
      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}   

