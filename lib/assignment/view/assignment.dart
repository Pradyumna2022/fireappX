import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_otp_ver/assignment/view/widgets/buy_coins_widget.dart';
import 'package:login_otp_ver/assignment/view/widgets/daily_reward.dart';
import 'package:login_otp_ver/assignment/controller/profile_controller.dart';
import 'package:login_otp_ver/assignment/global/color.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  ProfileController profileController = Get.put(ProfileController());

  /// ----------- FOR REFRESH METHOD -----------------
  // Future refreshMethod() async {
  //   await profileController.fetchData();
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Obx(() {
      if (profileController.loading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return RefreshIndicator(
          backgroundColor: backgroundColor,
          color: whiteColor,
          onRefresh: profileController.refreshData,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundColor,
              title: const Text(
                'FireAppX',
                style: TextStyle(color: whiteColor),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/assignment/icons/icon-coin.png',
                        width: 25,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        profileController.profileDataList.value.profile!.coins
                            .toString(),
                        style: const TextStyle(
                          color: blackColor,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Image.asset('lib/assignment/icons/bg-gold.png'),
                      Positioned(
                        top: 15,
                        left: 15,
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(width: 5, color: goldColor)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  profileController
                                      .profileDataList.value.profile!.photo
                                      .toString(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  profileController
                                      .profileDataList.value.profile!.name
                                      .toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  profileController
                                      .profileDataList.value.profile!.phone
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: const Text(
                                "Edit",
                                style: TextStyle(color: whiteColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 28,
                        child: Container(
                            decoration: BoxDecoration(
                                color: goldColor,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                                profileController
                                    .profileDataList.value.profile!.membership
                                    .toString(),
                                style: const TextStyle(
                                  color: blackColor,
                                  fontSize: 17,
                                ))),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: blackColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))),
                          height: height * 0.08,
                          width: double.infinity,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'lib/images/member.png',
                                width: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Manage your membership',
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 17,
                                  )),
                              const SizedBox(
                                width: 100,
                              ),
                              Image.asset(
                                'lib/images/view.png',
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Daily Rewards",
                                style: TextStyle(
                                    color: blackColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: profileController
                                  .profileDataList.value.rewards!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return DailyReward(
                                  coinsValue: profileController.profileDataList
                                      .value.rewards![index].coins
                                      .toString(),
                                  cimagePath:
                                      'lib/assignment/icons/icon-coin.png',
                                  rimagePath:
                                      'lib/assignment/icons/${profileController.profileDataList.value.rewards![index].icon}',
                                  subtitle: profileController.profileDataList
                                      .value.rewards![index].summary
                                      .toString(),
                                  title: profileController.profileDataList.value
                                      .rewards![index].title
                                      .toString(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Buy Coins Packs",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      itemCount: profileController
                                          .profileDataList.value.packs!.length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10,
                                              childAspectRatio: 1 / 1.85),
                                      itemBuilder: (context, index) {
                                        return BuyCoinsWidget(
                                          money: profileController
                                              .profileDataList
                                              .value
                                              .packs![index]
                                              .coins
                                              .toString(),
                                          coinsValue: profileController
                                              .profileDataList
                                              .value
                                              .packs![index]
                                              .coins
                                              .toString(),
                                          imagePath:
                                              'lib/assignment/icons/${profileController.profileDataList.value.packs![index].icon}',
                                        );
                                      }))
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
