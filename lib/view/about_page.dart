import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class AboutPage extends StatelessWidget {

  static String id = '/about';

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
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            child: SvgPicture.asset(
              'assets/images/main_logo.svg',
              semanticsLabel: 'Logo',
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0,),
                Text('Kickstart Your\nSuccessful Career',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: FontConstants.mainFont
                  ),
                ),
                Row(
                  children: [
                    Text('As a ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontFamily: FontConstants.mainFont
                      ),
                    ),
                    Text('Developer',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: ColorConstants.kPrimaryColor,
                          fontFamily: FontConstants.mainFont
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20.0,),

          landingImage(S_HEIGHT),

          SizedBox(height: 20.0,),

          visionMission('assets/images/our_vision.svg', 'Our Vision', TextConstants.vision, ColorConstants.kPrimaryColor, S_HEIGHT),
          visionMission('assets/images/our_mission.svg', 'Our Mission', TextConstants.mission, ColorConstants.kForthColor, S_HEIGHT),

          const SizedBox(
            height: 20.0,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Text('Our Story',
                      style: TextStyle(
                        fontFamily: FontConstants.mainFont,
                        fontSize: 25.0,
                      ),

                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(TextConstants.story,
                    style: TextStyle(
                      fontFamily: TextConstants.story
                    ),
                  ),
                    Container(
                      height: MediaQuery.of(context).size.height/2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/our_story (1).png'),
                          fit: BoxFit.fitHeight
                        )
                      ),
                    ),
                ],
              ),

            ),
          ),



          SizedBox(height: 20.0,)


        ],
      ),
    );
  }

  Widget landingImage(double S_HEIGHT){
    return Container(
      height: S_HEIGHT/2.5,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/landing_image_about_page.png'),
            fit: BoxFit.fitHeight,
          )
      ),
    );
  }

  Widget visionMission(String imageLink, String title, String text, Color color, double S_HEIGHT){
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      // height: S_HEIGHT/1.6,
      // width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: S_HEIGHT/13),
            SvgPicture.asset(imageLink),
            SizedBox(height: 30.0),
            Text(title,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontFamily: FontConstants.mainFont,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.kTextColor
              ),
            ),
            SizedBox(height: 10),
            Text(text,
              style: TextStyle(
                  height: 1.5,
                  fontFamily: FontConstants.mainFont,
                  fontSize: 15.0,
                  color: ColorConstants.kTextColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
