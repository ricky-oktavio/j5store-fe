import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j5store/theme.dart';

class WishLisyCart extends StatelessWidget {
  const WishLisyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.fromLTRB(12, 10, 20, 14),
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/ex.JPG',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'iPhone Xr',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\$270',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Icon(
            CupertinoIcons.heart_circle_fill,
            color: secondaryColor,
            size: 34,
          )
        ],
      ),
    );
  }
}
