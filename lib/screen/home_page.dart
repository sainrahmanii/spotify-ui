import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_ui/data/playlist_data.dart';
import 'package:spotify_ui/data/song_data.dart';
import 'package:spotify_ui/screen/detail_song_screen.dart';
import 'package:spotify_ui/widgets/card_playlist.dart';
import 'package:spotify_ui/widgets/card_song.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-home.svg"),
            label: "Home",
            activeIcon: SvgPicture.asset("assets/svgs/active-home.svg"),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-settings.svg"),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-favorite.svg"),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-profile.svg"),
            label: "Profile",
          ),
        ],
        selectedItemColor: const Color(0xff42C83C),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xff42C83C),
                  dividerHeight: 0,
                  labelPadding: const EdgeInsets.only(right: 60),
                  tabAlignment: TabAlignment.center,
                  labelStyle: const TextStyle(
                    fontFamily: 'PoppinsMedium',
                  ),
                  unselectedLabelColor: const Color(0xffBEBEBE),
                  labelColor: Colors.black,
                  isScrollable: true,
                  tabs: const [
                    Tab(text: "News"),
                    Tab(text: "Video"),
                    Tab(text: "Artist"),
                    Tab(text: "Podcast"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 280,
              child: Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 33),
                      child: ListView.builder(
                        itemCount: song.length,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(right: 14),
                        itemBuilder: (context, index) {
                          return CardSong(
                            image: song[index]['image'] ?? '-',
                            lagu: song[index]['judul-lagu'] ?? '-',
                            penyanyi: song[index]['penyanyi'] ?? '-',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailSongScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 33),
                      child: ListView.builder(
                        itemCount: song.length,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(right: 14),
                        itemBuilder: (context, index) {
                          return CardSong(
                            image: song[index]['image'] ?? '-',
                            lagu: song[index]['judul-lagu'] ?? '-',
                            penyanyi: song[index]['penyanyi'] ?? '-',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailSongScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 33),
                      child: ListView.builder(
                        itemCount: song.length,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(right: 14),
                        itemBuilder: (context, index) {
                          return CardSong(
                            image: song[index]['image'] ?? '-',
                            lagu: song[index]['judul-lagu'] ?? '-',
                            penyanyi: song[index]['penyanyi'] ?? '-',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailSongScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 33),
                      child: ListView.builder(
                        itemCount: song.length,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(right: 14),
                        itemBuilder: (context, index) {
                          return CardSong(
                            image: song[index]['image'] ?? '-',
                            lagu: song[index]['judul-lagu'] ?? '-',
                            penyanyi: song[index]['penyanyi'] ?? '-',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailSongScreen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 24),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Playlist",
                        style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Color(0xff131313),
                        ),
                      ),
                      Text(
                        "See more",
                        style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                          color: Color(0xff131313),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      itemCount: playlist.length,
                      itemBuilder: (context, index) {
                        return CardPlaylist(
                          titleSong: playlist[index]["title_song"] ?? "",
                          singer: playlist[index]["singer"] ?? "",
                          time: playlist[index]["time"] ?? "",
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 12,
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
