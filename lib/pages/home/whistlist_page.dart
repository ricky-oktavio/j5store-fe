import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j5store/theme.dart';
import 'package:j5store/widget/wish_cart.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Favorite Items'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWhisList() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.heart_fill,
                color: secondaryColor,
                size: 74,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'You don\'t have items ?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Let\'s find your favorite item',
                style: secondaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: bgColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              WishLisyCart(),
              WishLisyCart(),
              WishLisyCart(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWhisList(),
        content()
      ],
    );
  }
}
