import 'package:flutter/material.dart';
import 'package:login_signup_page_ui/screens/SignUP/components/social_icon.dart';

class SignUpWithSocialMedia extends StatelessWidget {
  const SignUpWithSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcons(
          press: () {},
          iconSrc: 'assets/icons/facebook.svg',
        ),
        SocialIcons(
          press: () {},
          iconSrc: 'assets/icons/google-plus.svg',
        ),
        SocialIcons(
          press: () {},
          iconSrc: 'assets/icons/twitter.svg',
        ),
      ],
    );
  }
}
