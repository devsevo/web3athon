import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';

class LeftDescription extends StatelessWidget {
  const LeftDescription({Key? key}) : super(key: key);
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
        Container(
          child: Text('''Land
Registration Portal''',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 60, 182, 151),
                fontSize: MediaQuery.of(context).size.width / 25,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                //letterSpacing: 1.5,
              )),
        ),
        // Description

        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            html.window.open(
                "https://drive.google.com/file/d/1y8EZmzqsEIs_k_rMbvuWCgvTml7h8KvM/view?usp=sharing",
                "Drive");
          },
          child: Container(
              width: 150,
              height: 57,
              child: const Center(
                child: Text("Learn More",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xffffffff),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 2,
                    )),
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 43, 179, 145),
                  borderRadius: BorderRadius.circular(8))),
        ),
      ],
    );
  }
}
