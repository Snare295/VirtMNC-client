import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:virt_mnc/main.dart';
import 'package:virt_mnc/ui/pages/message/group_message_page.dart';

class GroupTile extends StatelessWidget {
  const GroupTile({
    super.key,
    this.name = "The name of group isn't defined",
    this.groupImg = const AssetImage("assets/images/group.png"),
  });
  final String name;
  final ImageProvider<Object> groupImg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const GroupPage();
        }));
        logger.v(
          "⏭ Pushed to GroupPage of $name",
        );
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Theme.of(context).secondaryHeaderColor),
        child: Row(
          children: [
            Image(
              image: groupImg,
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox.expand(
                    child: AutoSizeText(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: SizedBox.expand(),
                ),
              ],
            )),
            const Icon(
              Icons.navigate_next,
            ),
          ],
        ),
      ),
    );
  }
}