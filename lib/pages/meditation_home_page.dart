import 'package:calco/static/navigation_route.dart';
import 'package:calco/style/colors/calco_colors.dart';
import 'package:calco/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MeditationHomePage extends StatelessWidget {
  const MeditationHomePage({super.key});

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
                    "Bagaimana perasaan kamu\nsekarang?",
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
                  const SizedBox(height: 70),
                  CustomButton(
                    title: "Hubungkan dengan Guardian",
                    color: CalcoColors.primaryBlue.color,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, NavigationRoute.meditationGuideRoute.name);
                    },
                  ),
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
