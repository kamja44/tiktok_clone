import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/users/widgets/user_profile_box.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text(
            "감자",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.gear,
                size: Sizes.size20,
              ),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/88872409?s=400&u=595c58644a270cace7e26fc44b1c79f8e53c782e&v=4"),
                child: Text("감자"),
              ),
              Gaps.v10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "@감자",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.size16,
                    ),
                  ),
                  Gaps.h5,
                  FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: Sizes.size16,
                    color: Colors.blue.shade500,
                  ),
                ],
              ),
              Gaps.v10,
              SizedBox(
                height: Sizes.size60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ColumnBox(
                      boxNumber: "97",
                      boxText: "Following",
                    ),
                    VerticalDivider(
                      width: 32,
                      thickness: Sizes.size1,
                      color: Colors.grey.shade400,
                      indent: Sizes.size16,
                      endIndent: Sizes.size16,
                    ),
                    const ColumnBox(
                      boxNumber: "10M",
                      boxText: "Followers",
                    ),
                    VerticalDivider(
                      width: 32,
                      thickness: Sizes.size1,
                      color: Colors.grey.shade400,
                      indent: Sizes.size16,
                      endIndent: Sizes.size16,
                    ),
                    const ColumnBox(
                      boxNumber: "194.3M",
                      boxText: "Likes",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
