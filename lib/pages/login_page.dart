import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background abu-abu layer
          Container(
            color: Colors.grey.shade300,
          ),

          // Layer atas putih + isi kontennya
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
                    const SizedBox(width: 12),
                    const Text(
                      "Register Akun",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text("Username"),
                TextField(),
                Text("Username"),
                TextField(),
                Text("Username"),
                TextField(),
                Text("Username"),
                TextField(),
                // Tambah form / widget lain
              ],
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
