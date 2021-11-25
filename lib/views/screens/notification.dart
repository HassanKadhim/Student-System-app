
import 'package:flutter/material.dart';

import '../../constants.dart';

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: const Center(
        child: Text(
          'Notification',
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
