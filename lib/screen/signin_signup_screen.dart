import 'package:flutter/material.dart';
import 'package:spotify_ui/screen/register_screen.dart';

class SigninSignupScreen extends StatelessWidget {
  const SigninSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  'assets/images/union-top.png',
                ),
              ),
              Positioned(
                left: -16,
                bottom: 0,
                child: Image.asset(
                  'assets/images/photo.png',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/union-bottom.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 24,
                  right: 24,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: const Alignment(-1, -1),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20,
                          color: Color(0xff414141),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 111,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          height: 70,
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        const Text(
                          "Enjoy Listening To Music",
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 26,
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        const Text(
                          "Spotify is proprietary Swedish audio\nstreaming and media services provider",
                          style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 17,
                            color: Color(0xff797979),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 145,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xff42C83C)),
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontFamily: "PoppinsMedium",
                                    fontSize: 19,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontFamily: "PoppinsMedium",
                                  fontSize: 19,
                                  color: Color(0xff313131),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
