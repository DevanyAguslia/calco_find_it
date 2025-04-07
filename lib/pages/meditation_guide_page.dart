import 'package:calco/style/colors/calco_colors.dart';
import 'package:flutter/material.dart';

import '../static/navigation_route.dart';
import '../widgets/custom_button.dart';

class MeditationGuidePage extends StatelessWidget {
  const MeditationGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CalcoColors.blueBackground.color,
      body: Stack(
        children: [
          // Ombak di bagian bawah
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/image_wave_bg.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Konten lainnya di atas ombak
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Center(
                child: Image.asset(
                  "assets/images/images_dolphin.png",
                  width: 240,
                ),
              ),
              CustomButton(
                title: "Selesai",
                color: CalcoColors.primaryBlue.color,
                onPressed: () {
                  Navigator.pushNamed(
                      context, NavigationRoute.meditationReviewRoute.name);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
