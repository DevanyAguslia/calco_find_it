import 'package:calco/style/colors/calco_colors.dart';
import 'package:calco/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../static/navigation_route.dart';
import '../widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background abu-abu
          Container(
            color: Colors.grey.shade300,
          ),
          ClipPath(
            clipper: BottomCurveClipper(),
            child: Container(
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/icons/icon_app.png",
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Selamat Datang \nKembali!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextfield(
                    title: "Email",
                    hintText: "johndoe@gmail.com",
                  ),
                  CustomTextfield(
                    title: "Pasword",
                    hintText: "Masukkan password disini",
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Lupa Password?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: CalcoColors.grey.color,
                          ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          title: "Masuk",
                          onPressed: () {
                            Navigator.pushNamed(
                                context, NavigationRoute.roleUserRoute.name);
                          },
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
