import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 33,
              right: 33,
              top: 40,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const Icon(Icons.location_searching_rounded),
                    SvgPicture.asset("assets/svgs/search.svg"),
                    Image.asset(
                      "assets/images/logo.png",
                      height: 33,
                    ),
                    const Icon(Icons.more_vert_rounded),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -43),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xff42C83C),
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/union.png"),
                              alignment: Alignment.topRight,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 19),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 3,
                              children: [
                                Text(
                                  "New Album",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsMedium',
                                    fontSize: 10,
                                    color: Color(0xffFBFBFB),
                                  ),
                                ),
                                Text(
                                  "Happier Than\nEver",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 19,
                                    color: Color(0xffFBFBFB),
                                  ),
                                ),
                                Text(
                                  "Billie Eilish",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsMedium',
                                    fontSize: 13,
                                    color: Color(0xffFBFBFB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/billie-eilish.png",
                        height: 180,
                      )
                    ],
                  ),
                ),
                const DefaultTabController(
                  length: 4,
                  child: TabBar(
                    indicatorColor: Color(0xff42C83C),
                    dividerHeight: 0,
                    tabAlignment: TabAlignment.center,
                    labelStyle: TextStyle(
                      fontFamily: 'PoppinsMedium',
                    ),
                    unselectedLabelColor: Color(0xffBEBEBE),
                    labelColor: Colors.black,
                    isScrollable: true,
                    tabs: [
                      Tab(text: "News"),
                      SizedBox(
                        width: 1,
                      ),
                      Tab(text: "Video"),
                      SizedBox(
                        width: 1,
                      ),
                      Tab(text: "Artist"),
                      SizedBox(
                        width: 1,
                      ),
                      Tab(text: "Podcast"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
