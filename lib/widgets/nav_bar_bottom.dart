import 'package:flutter/material.dart';
import 'package:ordo/utils/utils.dart';

class NavBarBottom extends StatelessWidget {
  final List<NavBarBottomItem> items;
  final int? currentIndex;
  final ValueChanged<int> onTap;

  NavBarBottom({required this.items, this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
        )
      ], color: Colors.white),
      child: Row(
        children: items
            .map(
              (e) => Expanded(
                child: GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).padding.bottom + gDp(85),
                    margin: EdgeInsets.only(
                      bottom: gDp(15),
                      top: gDp(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Icon(
                              e.icon,
                              color: Theme.of(context).primaryColor,
                            ),
                            if (e.hasNotif ?? false)
                              Positioned(
                                child: ClipOval(
                                  child: Container(
                                    color: Colors.white,
                                    width: gDp(15),
                                    height: gDp(15),
                                    alignment: Alignment.center,
                                    child: ClipOval(
                                      child: Container(
                                        color: Theme.of(context).primaryColor,
                                        width: gDp(12),
                                        height: gDp(12),
                                      ),
                                    ),
                                  ),
                                ),
                                right: gDp(5),
                              ),
                            if (e.bottomNotif ?? false)
                              Positioned(
                                child: ClipOval(
                                  child: Container(
                                    color: Colors.white,
                                    width: gDp(15),
                                    height: gDp(15),
                                    alignment: Alignment.center,
                                    child: ClipOval(
                                      child: Container(
                                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                                        width: gDp(10),
                                        height: gDp(10),
                                      ),
                                    ),
                                  ),
                                ),
                                right: gDp(0),
                                bottom: 0,
                              ),
                          ],
                        ),
                        SizedBox(
                          height: gDp(8),
                        ),
                        ClipOval(
                          child: Container(
                            color: currentIndex == items.indexOf(e)
                                ? Theme.of(context).primaryColor
                                : Colors.transparent,
                            width: gDp(10),
                            height: gDp(10),
                          ),
                        )
                        // BottomNavigationBar(items: items),
                      ],
                    ),
                  ),
                  onTap: () {
                    onTap(items.indexOf(e));
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class NavBarBottomItem {
  final IconData icon;
  final bool? hasNotif;
  final bool? bottomNotif;

  NavBarBottomItem({
    required this.icon,
    this.hasNotif,
    this.bottomNotif,
  });
}
