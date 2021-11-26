import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class Nots extends StatefulWidget {
  const Nots({Key? key}) : super(key: key);

  @override
  _NotsState createState() => _NotsState();
}

class _NotsState extends State<Nots> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: const Center(
        child: Text(
          'nota',
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
