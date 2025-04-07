import 'package:flutter/material.dart';

import '../static/navigation_route.dart';
import '../style/colors/calco_colors.dart';
import '../widgets/custom_button.dart';

class MeditationReviewPage extends StatelessWidget {
  const MeditationReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CalcoColors.blueBackground.color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  color: Colors.white,
                ),
                ClipPath(
                  clipper: BottomCurveClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "Halo, John! ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '🐬',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "Bagaimana perasaan kamu sekarang setelah melakukan meditasi John? Yuk ceritakan ke aku!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: CalcoColors.primaryBlue.color),
                  ),
                  const SizedBox(height: 35),
                  const Wrap(
                    runSpacing: 29,
                    spacing: 29,
                    children: [
                      EmojiButton(
                        imageUrl: "assets/icons/icon_flower.png",
                        title: "Tenang",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_bahagia.png",
                        title: "Bahagia",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_cemas.png",
                        title: "Cemas",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_marah.png",
                        title: "Marah",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_frustasi.png",
                        title: "Frustasi",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_sedih.png",
                        title: "Sedih",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_bingung.png",
                        title: "Bingung",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_kewalahan.png",
                        title: "Kewalahan",
                      ),
                      EmojiButton(
                        imageUrl: "assets/icons/icon_antusias.png",
                        title: "Antusias",
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: "Ceritakan perasaan kamu disini ...",
                          hintStyle:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: CalcoColors.grey.color,
                                  ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: CalcoColors.secondGrey.color, width: 1),
                          ))),
                  const SizedBox(height: 25),
                  CustomButton(
                    title: "Kirim",
                    color: CalcoColors.primaryBlue.color,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, NavigationRoute.homeRoute.name);
                    },
                  ),
                  const SizedBox(height: 52),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmojiButton extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;

  const EmojiButton({
    required this.imageUrl,
    required this.title,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 91,
            height: 91,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff010101).withOpacity(0.05),
                      offset: const Offset(2, 3),
                      blurRadius: 9.9)
                ]),
            child: Image.asset(
              imageUrl,
              width: 40,
              height: 40,
            ),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50); // turun sedikit
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0); // ke atas kanan
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
