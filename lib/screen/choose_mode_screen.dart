import 'package:flutter/material.dart';
import 'package:spotify_ui/screen/signin_signup_screen.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/choose mode.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 35,
                  horizontal: 45,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 60,
                      width: 196,
                    ),
                    const SizedBox(
                      height: 340,
                    ),
                    const Text(
                      "Choose Mode",
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          spacing: 17,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white10,
                              ),
                              child: const Icon(
                                Icons.dark_mode_rounded,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                            const Text(
                              "Dark Mode",
                              style: TextStyle(
                                fontFamily: "PoppinsMedium",
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          spacing: 17,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white10,
                              ),
                              child: const Icon(
                                Icons.light_mode_rounded,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                            const Text(
                              "Light Mode",
                              style: TextStyle(
                                fontFamily: "PoppinsMedium",
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 68,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SigninSignupScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff42C83C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(
                          double.infinity,
                          60,
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          fontFamily: 'PoppinsMedium',
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
