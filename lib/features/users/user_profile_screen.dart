import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/users/widgets/persistent_tab_bar.dart';
import 'package:tiktok_clone/features/users/widgets/user_profile_box.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
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
                    Gaps.v1,
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
                    Gaps.v1,
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
                    Gaps.v1,
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Sizes.size48 + Sizes.size48 + Sizes.size48,
                            height: Sizes.size40,
                            padding: const EdgeInsets.symmetric(
                              vertical: Sizes.size10,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(Sizes.size4),
                              ),
                            ),
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Gaps.h8,
                          Container(
                            alignment: Alignment.center,
                            width: Sizes.size48,
                            height: Sizes.size40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  Sizes.size4,
                                ),
                              ),
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.youtube,
                            ),
                          ),
                          Gaps.h8,
                          Container(
                            alignment: Alignment.center,
                            width: Sizes.size48,
                            height: Sizes.size40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(Sizes.size4),
                              ),
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.caretDown,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gaps.v5,
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.size32,
                      ),
                      child: Text(
                        "All highlights and where to watch live matches on FIFA+ I wonder how it would loook",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gaps.v14,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.link,
                          size: Sizes.size12,
                        ),
                        Gaps.h4,
                        Text(
                          "https://naver.com",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v10,
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: 20,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: Sizes.size2,
                  mainAxisSpacing: Sizes.size2,
                  childAspectRatio: 9 / 14,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 9 / 14,
                          child: FadeInImage.assetNetwork(
                            fit: BoxFit.cover,
                            placeholder: "assets/images/image.jpg",
                            image:
                                "https://images.unsplash.com/photo-1673844969019-c99b0c933e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80",
                          ),
                        ),
                        if (index == 0)
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: Sizes.size2,
                                horizontal: Sizes.size8,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(Sizes.size4),
                                ),
                              ),
                              child: const Text(
                                "Pinned",
                                style: TextStyle(
                                  fontSize: Sizes.size14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        const Positioned(
                          bottom: 5,
                          left: 10,
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.play,
                                color: Colors.white,
                              ),
                              Gaps.h6,
                              Text(
                                "4.1M",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Sizes.size16,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text("Page 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
