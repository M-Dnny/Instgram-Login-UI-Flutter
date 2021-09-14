import 'package:flutter/material.dart';
import 'package:instagram_flutter_ui/widgets/textContainer.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const InputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFieldContainer(
        child: TextField(
          onChanged: widget.onChanged,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class PasswordInputField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const PasswordInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFieldContainer(
        child: TextField(
          obscureText: _obsecureText,
          onChanged: widget.onChanged,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
              suffixIcon: IconButton(
                  icon: Icon(
                      _obsecureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  })),
        ),
      ),
    );
  }
}
