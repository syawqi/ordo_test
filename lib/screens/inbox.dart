import 'package:flutter/material.dart';
import 'package:ordo/data/inbox.dart';
import 'package:ordo/utils/utils.dart';
import 'package:ordo/widgets/background_shape.dart';
import 'package:ordo/widgets/inbox/header.dart';
import 'package:ordo/widgets/inbox/list_item.dart';
import 'package:ordo/widgets/inbox/seperator_label.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
              // color: Colors.red,
              ),
          Container(
            height: gDp(500),
            child: BackgroundShape(),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: gDp(100),
              horizontal: gDp(40),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  gDp(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 5),
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InboxHeader(),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: gDp(30),
                      ),
                      SeperatorLabel(label: "Recents",),
                      Container(
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: gDp(40)),
                            child: Divider(
                              color: Colors.black54,
                              thickness: 1,
                            ),
                          ),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListItem(
                              leading: Image.network(
                                Inbox.inbox[index].image ?? "",
                                width: gDp(110),
                                height: gDp(110),
                                fit: BoxFit.cover,
                              ),
                              title: Text(
                                Inbox.inbox[index].name ?? "",
                                style: TextStyle(
                                  fontSize: gDp(
                                    32,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                Inbox.inbox[index].description ?? "",
                                maxLines: 3,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: gDp(
                                    18,
                                  ),
                                ),
                              ),
                              trailing: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    Inbox.inbox[index].time ?? "",
                                    style: TextStyle(
                                      fontSize: gDp(18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: gDp(20),
                                  ),
                                  Container(
                                    child: Text(
                                      Inbox.inbox[index].notification ?? "",
                                      style: TextStyle(
                                        fontSize: gDp(14),
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(
                                        gDp(20),
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: gDp(15),
                                      vertical: gDp(5),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: Inbox.inbox.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
