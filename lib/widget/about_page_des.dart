import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:land_registration/constant/fonts.dart';
import 'package:land_registration/constant/strings.dart';
import 'package:land_registration/constant/text_styles.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({Key? key}) : super(key: key);
  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // title
        SizedBox(height: 100.0),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Image.asset(
            'assets/Devs Evo.png',
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Text('''About US''',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 60, 182, 151),
                fontSize: MediaQuery.of(context).size.width / 25,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                //letterSpacing: 1.5,
              )),
        ),

        SizedBox(
          height: 100,
        ),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildEducationContainerHeading(),
            _buildEducationSummary(),
            SizedBox(height: 8.0),
          ],
        )),
        SizedBox(
          height: 100,
        ),
        Container(
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildContact(),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Developers Evolution",
                      style: TextStyle(
                        fontFamily: Fonts.product,
                        color: Color.fromARGB(255, 34, 165, 121),
                        fontSize: 25.0, //22.0
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Karpagam Institute Of Technology,S.F.No.247,248, L&T Bypass Road, Seerapalayam Village, Bodipalayam Post, Coimbatore, Tamil Nadu 641105",
                      style: TextStyles.body1,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Contact Number:  9360510553",
                      style: TextStyles.body1,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Contact Mail:  developers.evolution3@gmail.com",
                      style: TextStyles.body1,
                    ),
                    SizedBox(height: 8.0),
                  ],
                )
              ],
            )),
        // Description

        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

Widget _buildEducationContainerHeading() {
  return Text(
    Strings.experience,
    style: TextStyles.sub_heading,
  );
}

Widget _buildEducationSummary() {
  return Container(
    width: 600,
    child: Text(
      """             Developers Evolution offers Software solution that reduce the need for human intervention with the help of emerging and trending technologies""",
      style: TextStyles.body1,
    ),
  );
}

Widget _buildContact() {
  return Text(
    Strings.contact,
    style: TextStyles.sub_heading,
  );
}
