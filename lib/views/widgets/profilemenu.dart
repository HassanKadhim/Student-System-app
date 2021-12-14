import 'package:flutter/material.dart';


class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: const [
          SizedBox(height: 20,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avtar.png'),
          ),
        ],
      ),
    );
  }
}
