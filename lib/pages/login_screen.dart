import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter_ui/widgets/button.dart';
import 'package:instagram_flutter_ui/widgets/or_divider.dart';
import 'package:instagram_flutter_ui/widgets/textfield.dart';
import 'package:instagram_flutter_ui/widgets/title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InstagramTitle(),
                SizedBox(height: 30),
                InputField(
                  hintText: 'Email',
                  onChanged: (value) {},
                ),
                SizedBox(height: 15),
                PasswordInputField(hintText: 'Password', onChanged: (value) {}),
                SizedBox(height: 15),
                Button(
                  text: 'Log In',
                  press: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
                ForgotButton(),
                OrDivider(),
                FaceBookLogin(),
              ],
            ),
          )),
    );
  }
}
