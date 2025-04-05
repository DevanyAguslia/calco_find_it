import 'package:calco/style/colors/calco_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Container(
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
                        backgroundImage:
                            AssetImage("assets/images/image_john.png"),
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
            ),
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
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff010101).withOpacity(0.05),
                            offset: const Offset(2, 3),
                            blurRadius: 9.9)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/icon_meditation.png",
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Pemandu Meditasi",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: CalcoColors.primary.color,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff010101).withOpacity(0.05),
                            offset: const Offset(2, 3),
                            blurRadius: 9.9)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/icon_sound.png",
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Suara Relaksasi",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: CalcoColors.primary.color,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
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
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
