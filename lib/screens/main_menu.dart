import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';
import 'package:tic_tac_toe/widgets/custom_btn.dart';
// import 'google_fonts';

class MainMenuScreen extends StatelessWidget {
  static String routeName= '/main-menu';
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          
          CustomButtom(onTap: (){}, text: "Create a Room", color: createbtn),
          SizedBox(height: 20,),
          CustomButtom(onTap: (){}, text: "Join a Room",color: joinbtn),
          
          
        ]
        
      )
      
      
    );
  }
}