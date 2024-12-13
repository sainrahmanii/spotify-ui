import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/arrow_back_with_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 320,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(66),
                        bottomRight: Radius.circular(66),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, -30),
                          blurRadius: 150,
                          color: Colors.grey.withOpacity(0.13),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        ArrowBackWithText(
                          titleText: "Profile",
                          colorSquare: Color(0xffAAAAAA).withOpacity(0.13),
                          iconColor: Colors.black,
                          textColor: Colors.black,
                          iconVertColor: Colors.grey,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                width: 93,
                                height: 93,
                                margin: const EdgeInsets.only(
                                  top: 20,
                                  bottom: 11,
                                ),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/profile.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                "husainrahmani127@gmail.com",
                                style: TextStyle(
                                  color: Color(0xff222222),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Sainrahmanii",
                                style: TextStyle(
                                  color: Color(0xff222222),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "778\n",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Color(0xff222222),
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Followers",
                                          style: TextStyle(
                                            color: Color(0xff585858),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "243\n",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Color(0xff222222),
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Following",
                                          style: TextStyle(
                                            color: Color(0xff585858),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/union-profile.png",
                    height: 178,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "PUBLIC PLAYLISTS",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
