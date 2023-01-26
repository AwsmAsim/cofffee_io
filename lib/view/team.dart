import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class TeamPage extends StatelessWidget {
  static String id = '/team';

  @override
  Widget build(BuildContext context) {
    final S_HEIGHT = MediaQuery.of(context).size.height;
    final S_WIDTH = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorConstants.kTextColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.kForthColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            child: SvgPicture.asset(
              'assets/images/main_logo.svg',
              semanticsLabel: 'Logo',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'We love tech',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontFamily: FontConstants.mainFont),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'as much as you ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            fontFamily: FontConstants.mainFont),
                      ),
                      Text(
                        'do!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: ColorConstants.kPrimaryColor,
                            fontFamily: FontConstants.mainFont),
                      )
                    ],
                  ),
                ],
              ),
            ),
            landingImage(S_HEIGHT),

            const SizedBox(
              height: 20.0,
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                'We believe in Team !',
                style: TextStyle(
                    fontFamily: FontConstants.mainFont,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            Text(TextConstants.teamBelieve,
              style: TextStyle(
                fontFamily: FontConstants.mainFont
              ),
            ),
            SizedBox(
              height: 60.0,
            ),

            Align(
              alignment: Alignment.center,
              child: Text('Meet our Founders',
                style: TextStyle(
                  fontFamily: FontConstants.mainFont,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900
                ),
              ),
            ),

            SizedBox(
              height: 40.0,
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget landingImage(double S_HEIGHT) {
    return Container(
      height: S_HEIGHT / 2.5,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/landing_image_about_page.png'),
        fit: BoxFit.fitHeight,
      )),
    );
  }
}
