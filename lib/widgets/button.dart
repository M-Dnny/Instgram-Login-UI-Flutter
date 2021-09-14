import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.padding,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.textcolor,
  });

  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final Color textcolor;
  final bool enable = false;

  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(widget.text),
      onPressed: widget.onPressed,
      padding: widget.padding,
      color: Colors.blue,
      textColor: Colors.white,
      elevation: 0,
      highlightElevation: 0,
    );
  }
}

class ForgotButton extends StatefulWidget {
  const ForgotButton({Key? key}) : super(key: key);

  @override
  _ForgotButtonState createState() => _ForgotButtonState();
}

class _ForgotButtonState extends State<ForgotButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: EasyRichText(
          'Forgotten your login details? Get help with logging in.',
          defaultStyle: TextStyle(color: Colors.grey, fontSize: 12),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Get help with logging in.',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
            )
          ],
        ),
      ),
    );
  }
}

class FaceBookLogin extends StatefulWidget {
  const FaceBookLogin({Key? key}) : super(key: key);

  @override
  _FaceBookLoginState createState() => _FaceBookLoginState();
}

class _FaceBookLoginState extends State<FaceBookLogin> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.facebook,
        size: 30,
      ),
      label: Text(
        'Log In With Facebook',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  final fontWeight;
  final fontSize;

  const Button({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
    required this.fontWeight,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            // backgroundColor: color,
            backgroundColor: color,
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: fontWeight, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}

