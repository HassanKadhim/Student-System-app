import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({Key? key}) : super(key: key);

  @override
  _NewsLetterState createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: const Center(
        child: Text(
          'NewsLetter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
