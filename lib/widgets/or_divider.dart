import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(
                color: Colors.grey
              ),
              ),
            ),
          buildDivider()
        ],
      ),
    );
  }
}

Expanded buildDivider() {
  return Expanded(
    child: Divider(
      height: 1.5,
      color: Colors.grey,
    ),
  );
}
