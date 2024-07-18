import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/create_room.dart';
import 'package:tic_tac_toe/screens/join_room.dart';
import 'package:tic_tac_toe/utils/colors.dart';
import 'package:tic_tac_toe/widgets/custom_btn.dart';
// import 'google_fonts';

class MainMenuScreen extends StatelessWidget {
  static String routeName= '/main-menu';
  const MainMenuScreen({super.key});


  void createRoom(BuildContext context)
  {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }
   void joinRoom(BuildContext context)
  {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          
          CustomButtom(onTap: (){
            createRoom(context);
          }, text: "Create a Room", color: createbtn),
          SizedBox(height: 20,),
          CustomButtom(onTap: (){
            joinRoom(context);
          }, text: "Join a Room",color: joinbtn),
          
          
        ]
        
      )
      
      
    );
  }
}