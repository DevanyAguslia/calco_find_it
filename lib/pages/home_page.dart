import 'package:calco/style/colors/calco_colors.dart';
import 'package:calco/widgets/custom_time_button.dart';
import 'package:calco/widgets/image_icon_button.dart';
import 'package:calco/widgets/last_activity_item.dart';
import 'package:flutter/material.dart';

import '../static/navigation_route.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7FB),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/icons/icon_setting.png",
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Halo, Guardian",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8.5),
                  decoration: BoxDecoration(
                      color: CalcoColors.secondaryGreen.color,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Image.asset("assets/images/image_circle_green.png"),
                      const SizedBox(width: 15),
                      Text(
                        "Terhubung",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: CalcoColors.primaryGreen.color,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            const UserDataReview(),
            Text(
              "Kontrol Terapi",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ImageIconButton(
                  imageUrl: "assets/icons/icon_meditation.png",
                  title: "Pemandu Meditasi",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        int selectedIndex = 1;

                        return StatefulBuilder(builder: (context, setState) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 21),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  padding: const EdgeInsets.all(5),
                                  margin: const EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: CalcoColors.secondary.color,
                                  ),
                                  child: Image.asset(
                                    "assets/icons/icon_meditation.png",
                                    width: 21,
                                    height: 21,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "Pemandu meditasi",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Bantu anak merasa lebih tenang dengan panduan meditasi berbasis suara.",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: CalcoColors.secondGrey.color,
                                      ),
                                ),
                                const SizedBox(height: 40),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Expanded(
                                //         child: CustomTimeButton(
                                //       time: "00",
                                //       title: "Jam",
                                //       isSelected: selectedIndex == 0,
                                //       onTap: () {
                                //         setState(() {
                                //           selectedIndex = 0;
                                //           print("selectedIndex: $selectedIndex");
                                //         });
                                //       },
                                //     )),
                                //     const SizedBox(width: 10),
                                //     Expanded(
                                //         child: CustomTimeButton(
                                //       time: "15",
                                //       isSelected: selectedIndex == 1,
                                //       onTap: () {
                                //         setState(() {
                                //           selectedIndex = 1;
                                //           print("selectedIndex: $selectedIndex");
                                //         });
                                //       },
                                //     )),
                                //     const SizedBox(width: 10),
                                //     Expanded(
                                //         child: CustomTimeButton(
                                //       time: "30",
                                //       title: "Detik",
                                //       isSelected: selectedIndex == 2,
                                //       onTap: () =>
                                //           setState(() => selectedIndex = 2),
                                //     )),
                                //   ],
                                // ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: List.generate(3, (index) {
                                    final timeOptions = ["00", "15", "30"];

                                    final titleOptions = [
                                      "Jam",
                                      "Menit",
                                      "Detik"
                                    ];
                                    return Expanded(
                                      child: CustomTimeButton(
                                        time: timeOptions[index],
                                        title: titleOptions[index],
                                        isSelected: selectedIndex == index,
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                        },
                                      ),
                                    );
                                  }),
                                ),
                                const SizedBox(height: 54),
                                Align(
                                  alignment: Alignment.center,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: CustomButton(
                                        title: "Mulai Terapi",
                                        onPressed: () {
                                          Navigator.pushNamed(context,
                                              NavigationRoute.homeRoute.name);
                                        },
                                      )),
                                ),
                              ],
                            ),
                          );
                        });
                      },
                    );
                  },
                )),
                const SizedBox(width: 15),
                Expanded(
                    child: ImageIconButton(
                  imageUrl: "assets/icons/icon_sound.png",
                  title: "Suara Relaksasi",
                  onTap: () async {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        int selectedIndex = 1;
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 21),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CalcoColors.secondary.color,
                                ),
                                child: Image.asset(
                                  "assets/icons/icon_sound.png",
                                  width: 21,
                                  height: 21,
                                ),
                              ),
                              Text(
                                "Suara Relaksasi",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Suara latar yang membantu anak fokus dan merasa nyaman.",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: CalcoColors.secondGrey.color,
                                      ),
                                ),
                                const SizedBox(height: 40),
                                Row(
                                  children: [
                                    Expanded(
                                        child: CustomTimeButton(
                                      imageUrl: "assets/icons/icon_white.png",
                                      title: "White Noise",
                                      isSelected: selectedIndex == 2,
                                      onTap: () =>
                                          setState(() => selectedIndex = 2),
                                    )),
                                    const SizedBox(width: 10),
                                    Expanded(
                                        child: CustomTimeButton(
                                      imageUrl: "assets/icons/icon_brown.png",
                                      title: "Brown Noise",
                                      isSelected: selectedIndex == 2,
                                      onTap: () =>
                                          setState(() => selectedIndex = 2),
                                    )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: CustomTimeButton(
                                      imageUrl: "assets/icons/icon_rainy.png",
                                      title: "Suara Hujan",
                                      isSelected: selectedIndex == 2,
                                      onTap: () =>
                                          setState(() => selectedIndex = 2),
                                    )),
                                    const SizedBox(width: 10),
                                    Expanded(
                                        child: CustomTimeButton(
                                      imageUrl: "assets/icons/icon_wave.png",
                                      title: "Suara Ombak",
                                      isSelected: selectedIndex == 2,
                                      onTap: () =>
                                          setState(() => selectedIndex = 2),
                                    )),
                                  ],
                                ),
                                const SizedBox(height: 54),
                                Align(
                                    alignment: Alignment.center,
                                    child: CustomButton(
                                      title: "Mulai Terapi",
                                      onPressed: () {
                                        Navigator.pushNamed(context,
                                            NavigationRoute.homeRoute.name);
                                      },
                                    )),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                )),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              "Aktifitas Terakhir",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            const LastActivityItem(
                imageUrl: "assets/icons/icon_meditation.png",
                title: "Pemandu meditasi",
                time: "15 menit - 24 Jam yang lalu"),
            const LastActivityItem(
                imageUrl: "assets/icons/icon_sound.png",
                title: "Suara relaksasi",
                time: "60 menit - 5 Jam yang lalu"),
          ],
        ),
      ),
    );
  }
}

class UserDataReview extends StatelessWidget {
  const UserDataReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      margin: const EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/image_john.png"),
                radius: 48,
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Perasaan: Senang",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 37),
          Text(
            "Frekuensi Emosi",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          Image.asset("assets/images/image_graphic.png"),
        ],
      ),
    );
  }
}
