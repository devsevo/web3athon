import 'package:flutter/material.dart';
import 'package:land_registration/constant/assets.dart';
import 'package:land_registration/constant/text_styles.dart';
import 'package:land_registration/widget/about_page_des.dart';
import 'package:land_registration/widget/header.dart';
import 'package:land_registration/widget/homePageDecription.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';
import 'dart:html' as html;

class about_page extends StatefulWidget {
  const about_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<about_page> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Top Header
            Material(
              elevation: 5,
              color: Color.fromARGB(255, 49, 170, 150),
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 40,
                    top: MediaQuery.of(context).size.height / 70,
                    right: MediaQuery.of(context).size.width / 40,
                    bottom: MediaQuery.of(context).size.height / 70),
                child: HeaderWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0, top: 0, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        'assets/programmer-3.gif',
                      ),
                    ),
                  ),
                  const AboutDescription()
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        "https://www.linkedin.com/in/devs-evo-440b00247/",
                        "LinkedIn");
                  },
                  child: Image.network(
                    Assets.linkedin,
                    color: Color(0xFF45405B),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                SizedBox(width: 50.0),
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        "mailto:developers.evolution3@gmail.com", "Email");
                  },
                  child: Image.network(
                    Assets.mail,
                    color: Color(0xFF45405B),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                SizedBox(width: 50.0),
                GestureDetector(
                  onTap: () {
                    html.window.open("https://github.com/devsevo", "Github");
                  },
                  child: Image.network(
                    Assets.github,
                    color: Color(0xFF45405B),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                SizedBox(width: 50.0),
                GestureDetector(
                  onTap: () {
                    html.window.open("https://twitter.com/Devs_evo", "Twitter");
                  },
                  child: Image.network(
                    Assets.twitter,
                    color: Color(0xFF45405B),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                SizedBox(width: 50.0),
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        "https://www.instagram.com/devs.evo/", "Instagram");
                  },
                  child: Image.network(
                    Assets.insta,
                    color: Color(0xFF45405B),
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'CopyRights All Reserved By @Devs Evo Technoologies',
              style: TextStyles.body,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
