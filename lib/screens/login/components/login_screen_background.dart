import 'package:flutter/material.dart';

class LoginScrBackground extends StatelessWidget {
  final Widget child;
  const LoginScrBackground({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      // provide available maximum height
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: size.width * 0.45,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
