import 'package:flutter/material.dart';
import 'package:spotify_ui/screen/choose_mode_screen.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/get-started1.png',
                height: 805,
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
                      height: 470,
                    ),
                    const Text(
                      "Enjoy Listening To Music",
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        color: Color(0xff797979),
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseModeScreen(),
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
                        "Get Started",
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
