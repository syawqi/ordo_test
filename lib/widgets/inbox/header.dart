import 'package:flutter/material.dart';
import 'package:ordo/utils/colors.dart';
import 'package:ordo/utils/utils.dart';

class InboxHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: gDp(26),
        horizontal: gDp(30),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            gDp(10),
          ),
          topLeft: Radius.circular(
            gDp(10),
          ),
        ),
        gradient: LinearGradient(
          colors: [
            ColorPalate.secondaryColor.withOpacity(1),
            ColorPalate.combineColor.withOpacity(1),
          ],
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              size: gDp(25),
              color: Colors.white,
            ),
            onTap: () {},
          ),
          SizedBox(
            width: gDp(10),
          ),
          Text(
            "Inbox",
            style: TextStyle(
              color: Colors.white,
              fontSize: gDp(26)
            ),
          ),
        ],
      ),
    );
  }
}
