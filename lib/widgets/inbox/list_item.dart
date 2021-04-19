import 'package:flutter/material.dart';
import 'package:ordo/utils/utils.dart';

class ListItem extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget? leading;

  const ListItem(
      {Key? key, this.title, this.subtitle, this.trailing, this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Container(
        padding: EdgeInsets.symmetric(horizontal : gDp(40), vertical: gDp(10)),
        margin: EdgeInsets.only(top: gDp(10),),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leading ?? SizedBox(),
            SizedBox(
              width: gDp(20),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title ?? SizedBox(),
                  SizedBox(height: gDp(10),),
                  subtitle ?? SizedBox(),
                ],
              ),
            ),
            SizedBox(
              width: gDp(40),
            ),
            trailing ?? SizedBox(),
          ],
        ),
      ),
    );
  }
}
