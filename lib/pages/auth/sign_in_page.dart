import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j5store/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(fontSize: 24),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign to continue',
            style: subtittleColor.copyWith(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: bgColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.mail),
                        SizedBox(width: 16),
                        Expanded(
                            child: TextFormField(
                          style: primaryTextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Your Email Address',
                            hintStyle: subtittleColor,
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: bgColor2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.lock),
                        SizedBox(width: 16),
                        Expanded(
                            child: TextFormField(
                          style: primaryTextStyle,
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Your Password',
                            hintStyle: subtittleColor,
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buttonSign(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Sign In',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
    );
  }

  Widget footer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dont\'t have an account?',
            style: subtittleColor.copyWith(fontSize: 12),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: pupleTexStyle.copyWith(fontSize: 12),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor3,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              body(),
              buttonSign(context),
              Spacer(),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}
