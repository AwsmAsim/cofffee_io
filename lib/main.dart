import 'package:coffeee/view/about_page.dart';
import 'package:coffeee/view/campus_partner.dart';
import 'package:coffeee/view/contact_us.dart';
import 'package:coffeee/view/home_page.dart';
import 'package:coffeee/view/job_seeker.dart';
import 'package:coffeee/view/recruiter.dart';
import 'package:flutter/material.dart';

import 'view/team.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: HomePage()),
      initialRoute: '/',
      routes: {
        '/team' : (context) => TeamPage(),
        '/campus-partner': (context) => CampusPartner(),
        '/contact-us': (context) => ContactUs(),
        JobSeeker.id : (context) => JobSeeker(),
        Recruiter.id : (context) => Recruiter(),
        AboutPage.id: (context) => AboutPage(),
        TeamPage.id: (context) => TeamPage()
      },
    );
  }
}
