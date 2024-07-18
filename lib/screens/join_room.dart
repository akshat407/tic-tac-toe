import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';
import 'package:tic_tac_toe/widgets/custom_btn.dart';
import 'package:tic_tac_toe/widgets/custom_text.dart';
import 'package:tic_tac_toe/widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _codeController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                shadows: [Shadow(blurRadius: 30, color: Colors.transparent)],
                text: "Join a Room",
                fontSize: 65),
            SizedBox(height: size.height * 0.08),
            CustomTextField(
              controller: _nameController,
              hintText: "Enter your nickname",
              color: Colors.blueAccent,
            ),  
            SizedBox(height: 20),

            CustomTextField(
              controller: _codeController,
              hintText: "Enter GAME ID",
              color: Colors.blueAccent,
            ),
            SizedBox(height: size.height * 0.045),
            CustomButtom(onTap: () {}, text: "Join now", color: joinbtn)
          ],
        ),
      ),
    );
  }
}
