import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/utils/app_theme.dart';
import 'package:spotify_clone/widgets/albumCard.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                apptheme.GradientColor1,
                apptheme.GradientColor2,
                apptheme.GradientColor3,
              ])),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recently Played", style: apptheme.Heading1),
                      Row(
                        children: [
                          Icon(
                            Icons.history,
                            color: apptheme.terinaryColor,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.settings,
                            color: apptheme.terinaryColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      AlbumCard(
                        label: "Bleed it out",
                        image: AssetImage("assets/album11.jpg"),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      AlbumCard(
                        label: "Superman",
                        image: AssetImage("assets/album1.jpg"),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      AlbumCard(
                        label: "God's Plan",
                        image: AssetImage("assets/album12.jpg"),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      AlbumCard(
                        label: "HUMBLE",
                        image: AssetImage("assets/album5.jpg"),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      AlbumCard(
                        label: "Top 50 - India",
                        image: AssetImage("assets/top50India.jpg"),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      AlbumCard(
                        label: "West Side",
                        image: AssetImage("assets/album7.jpg"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text("Good Evening", style: apptheme.Heading1,),
                      SizedBox(height: 16,)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

