import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';
import 'package:tic_tac_toe/widgets/custom_btn.dart';
import 'package:tic_tac_toe/widgets/custom_text.dart';
import 'package:tic_tac_toe/widgets/custom_textfield.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName= '/create-room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController=TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(shadows: [
              Shadow(
                blurRadius: 30,
                color: Colors.transparent
              )
            ], text: "Create a Room", fontSize: 65),
            SizedBox(height: size.height*0.08),
            CustomTextField(controller: _nameController, hintText: "Enter your nickname",color: Colors.redAccent,),
            SizedBox(height: size.height*0.045),
            CustomButtom(
              onTap: (){}, 
              text: "Create now!!",
              color: createbtn)



          ],
        ),
      ),
    );
  }
}                                