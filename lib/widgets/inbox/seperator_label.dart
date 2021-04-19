import 'package:flutter/material.dart';
import 'package:ordo/utils/utils.dart';

class SeperatorLabel extends StatelessWidget {
  final String label;

  const SeperatorLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: gDp(40)),
      child: Text(
        "Recents",
        style: TextStyle(
          fontSize: gDp(
            25,
          ),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
