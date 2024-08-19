import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/inbox/activity_screen.dart';
import 'package:tiktok_clone/features/inbox/chats_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});
  void _onDmPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ChatsScreen(),
      ),
    );
  }

  void _onActivityTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ActivityScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text("Inbox"),
          actions: [
            IconButton(
              onPressed: () => _onDmPressed(context),
              icon: const FaIcon(
                FontAwesomeIcons.paperPlane,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => _onActivityTap(context),
              title: const Text(
                "Activity",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.size18,
                ),
              ),
              trailing: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: Sizes.size14,
                color: Colors.black,
              ),
            ),
            Container(
              height: Sizes.size1,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: Container(
                width: Sizes.size52,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.users,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text(
                "New followers",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.size16,
                ),
              ),
              subtitle: const Text(
                "Messages from followers will appear here",
                style: TextStyle(
                  fontSize: Sizes.size14,
                ),
              ),
              trailing: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: Sizes.size14,
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}
