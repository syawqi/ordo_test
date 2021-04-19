import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ordo/screens/inbox.dart';
import 'package:ordo/utils/colors.dart';
import 'package:ordo/utils/utils.dart';
import 'package:ordo/widgets/nav_bar_bottom.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List<Widget> children = [
    Container(
      child: Center(
        child: Text("Notification"),
      ),
    ),
    InboxScreen(),
    Container(
      child: Center(
        child: Text("Home"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Car"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Profile"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    gInitDp(context, width: 750);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalate.headerColor,
        shadowColor: Colors.black,
        title: Padding(child: Text("ISPY"), padding: EdgeInsets.only(left: gDp(14)),),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.userAlt,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(width: gDp(30),),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: children,
      ),
      bottomNavigationBar: NavBarBottom(
        currentIndex: index,
        onTap: (v) {
          setState(() {
            index = v;
          });
        },
        items: [
          NavBarBottomItem(
            icon: FontAwesomeIcons.solidBell,
            hasNotif: true,
          ),
          NavBarBottomItem(
            icon: FontAwesomeIcons.inbox,
          ),
          NavBarBottomItem(
            icon: FontAwesomeIcons.home,
          ),
          NavBarBottomItem(
            icon: FontAwesomeIcons.car,
          ),
          NavBarBottomItem(
            icon: FontAwesomeIcons.userAlt,
            bottomNotif: true,
          )
        ],
      ),
    );
  }
}
