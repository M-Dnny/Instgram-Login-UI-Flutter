import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstagramTitle extends StatelessWidget {
  const InstagramTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyRichText(
      'Instagram Clone',
      defaultStyle: TextStyle(
        fontFamily: 'Instagram Fonts',
        color: Colors.black,
        fontSize: 40,
      ),
      patternList: [
        EasyRichTextPattern(
            targetString: 'Clone',
            subScript: true,
            style: TextStyle(
              fontFamily: 'Instagram Fonts',
              fontSize: 40,
            ))
      ],
    );
  }
}
