import 'package:calco/widgets/custom_button.dart';
import 'package:calco/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../static/navigation_route.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                      "Register Akun",
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
                    title: "Username",
                    hintText: "Ketikkan nama disini",
                  ),
                  CustomTextfield(
                    title: "Email",
                    hintText: "johndoe@gmail.com",
                  ),
                  CustomTextfield(
                    title: "Pasword",
                    hintText: "Masukkan password disini",
                  ),
                  CustomTextfield(
                    title: "Pasword",
                    hintText: "Konfirmasi ulang password",
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: CustomButton(
                        title: "Daftar Akun",
                        onPressed: () {
                          Navigator.pushNamed(
                              context, NavigationRoute.homeRoute.name);
                        },
                      )),
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
