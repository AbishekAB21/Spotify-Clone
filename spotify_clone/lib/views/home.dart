import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/utils/app_theme.dart';

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
                  ]
                  )
              ),
            ),

            SingleChildScrollView(
             physics: BouncingScrollPhysics(),
             child: SafeArea(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Recently Played",style: TextStyle(color: apptheme.terinaryColor)),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                     child: Row(
                       children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset("assets/album11.jpg", width: 100, height: 100,),
                             Text("Best Mode", style: TextStyle(color: apptheme.terinaryColor),)
                           ],
                         )
                       ],
                     ),
                   )
                 ],
               ),
             ),
            )
            ],
        )
        );
  }
}
