import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffeee/constant.dart';
import 'package:coffeee/view/about_page.dart';
import 'package:coffeee/view/job_seeker.dart';
import 'package:coffeee/view/recruiter.dart';
import 'package:coffeee/view/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xff020206), Color(0xff131132)]),
          ),
        ),
        title: SvgPicture.asset(
          'assets/images/main_logo.svg',
          semanticsLabel: 'Logo',
        ),
        actions: [
          Builder(
            builder: (context) => Center(
              child: GestureDetector(
                onTap: (){ Scaffold.of(context).openEndDrawer();},
                child: SvgPicture.asset(
                  'assets/images/nav_logo.svg',
                  semanticsLabel: 'Navbar',
                ),
              ),
            ),
          ),
          SizedBox(width: 15.0,),
        ]
      ),
      endDrawer: drawer(context),
      backgroundColor: ColorConstants.kBackground,
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mainText(color: ColorConstants.kPrimaryColor, text: 'Pre-assessed,\nsuper skilled talent'),
                      mainText(color: ColorConstants.kTextColor, text: 'meets global tech\n opportunities'),
                      SizedBox(
                        height: 35.0,
                      ),
                      Text('Get Trained. Get Discovered. Get Hired.',
                        style: TextStyle(
                          color: ColorConstants.kTextColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      homePageButton('I\'m A Job Seeker', () {
                        Navigator.of(context).pushNamed(JobSeeker.id);
                      }),
                      SizedBox(
                        height: 10.0,
                      ),
                      homePageButton('I\'m A Recruiter', (){
                      Navigator.of(context).pushNamed(Recruiter.id);
                      }),
                    ],
                  ),
                )
            ),
            Expanded(
              flex: 1,
                child: Container(
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstants.hSlidingImage[index]),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                      return Image.asset(ImageConstants.hSlidingImage[index]);
                    },
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      pauseAutoPlayInFiniteScroll: true,
                      autoPlayAnimationDuration: Duration(seconds: 3),
                      autoPlayCurve: Curves.linear
                    ),

                  ),
                ),
            )
          ],
        ),
      ),
    );

  }

  Widget mainText({required Color color, required String text}){
    return Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: FontConstants.mainFont,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: color
      ),
    );
  }

  Widget homePageButton(String text, Function() onTap){
    return TextButton(
      onPressed: onTap,
      child: Container(
        width: 200.0,
        height: 50.0,
        decoration: BoxDecoration(
            color: ColorConstants.kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        child: Center(
          child: Text(text,
            style: TextStyle(
                color: ColorConstants.kTextColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }

  Widget drawer(BuildContext context){
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.clear,
                  ),),
              ],
            ),
          ),
          drawerLabel('About Us',()=>Navigator.of(context).pushNamed(AboutPage.id)),
          Container(
            color: Colors.grey,
            height: 0.5,
          ),
          drawerLabel('Team', ()=>Navigator.of(context).pushNamed(TeamPage.id)),
          Container(
            color: Colors.grey,
            height: 0.5,
          ),
          drawerLabel('Contact Us', (){}),
          Container(
            color: Colors.grey,
            height: 0.5,
          ),
          drawerLabel('Campus Partner', (){})

        ],
      ),
    );
  }

  Widget drawerLabel(String name,Function() onTap){
    return GestureDetector(
      child: ListTile(
        title: Text(name,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.0
          ),
        ),
        onTap: onTap,
      ),
    );
  }
  
}
