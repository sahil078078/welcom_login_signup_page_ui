import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_page_ui/components/already_have_account_check.dart';
import 'package:login_signup_page_ui/components/rounded_button.dart';
import 'package:login_signup_page_ui/components/rounded_input_field.dart';
import 'package:login_signup_page_ui/components/rounded_password_field.dart';
import 'package:login_signup_page_ui/screens/SignUP/components/signui_screen_background.dart';
import 'package:login_signup_page_ui/screens/SignUP/components/signup_with_socialmedia.dart';
import 'package:login_signup_page_ui/screens/login/login_screen.dart';
import 'or_divider.dart';

class SignUpScrBody extends StatelessWidget {
  const SignUpScrBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpScrBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(hintText: 'Your Email', onChanded: (value) {}),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            RoundedButton(
              text: 'Sign up',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              login: false,
            ),
            const OrDivider(),
            const SignUpWithSocialMedia(),
          ],
        ),
      ),
    );
  }
}
