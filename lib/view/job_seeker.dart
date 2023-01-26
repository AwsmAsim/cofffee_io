import 'package:coffeee/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JobSeeker extends StatelessWidget {

  final double policyFont = 12.0;
  static String id = '/job_seeker';

  @override
  Widget build(BuildContext context) {
    var S_HEIGHT = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstants.kBackground,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.clear,
                  color: Colors.white,
                ),),
          ),
        ],
        backgroundColor: ColorConstants.kBackground,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SvgPicture.asset(
            'images/main_logo.svg',
            semanticsLabel: 'Logo',
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
          child:
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: S_HEIGHT/10,),
                  Text('Experience Coffeee !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontConstants.mainFont,
                      color: ColorConstants.kTextColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  TextField(

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
                      isDense: true,
                      filled: true,
                      fillColor: ColorConstants.kTextColor,
                      hintText: 'Your Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('Forgot Password ?',
                    style: TextStyle(
                      color: ColorConstants.kThirdColor
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    children: [
                      Text('By signing up you agree to our ',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: policyFont,
                          color: ColorConstants.kTextColor
                        ),
                      ),

                      Text('Terms of Service ',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: ColorConstants.kThirdColor,
                          fontSize: policyFont,
                        ),
                      ),

                      Text('and ',
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                          fontSize: policyFont,
                          color: ColorConstants.kTextColor
                        ),
                      ),

                      Text('Privacy Policy ',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                            color: ColorConstants.kThirdColor,
                            fontSize: policyFont,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25.0,),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextButton(
                        onPressed: (){},
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                            color: ColorConstants.kThirdColor,
                          ),
                          child: Center(
                              child: Text('Continue',
                                style: TextStyle(
                                  fontFamily: FontConstants.mainFont,
                                  color: ColorConstants.kTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0
                                ),
                              )
                          ),
                        )
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  Container(
                    width: double.infinity,
                    child: Center(
                      child: Text('or connect with',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  OtherLoginButton('Google', 'images/google.png'),
                  OtherLoginButton('GitHub', 'images/github.png'),
                  OtherLoginButton('LinkedIn', 'images/linkedin.png'),


                ],
              ),
            ),
        ),
      ),
    );
  }

  Widget OtherLoginButton(String text, String icon){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextButton(
          onPressed: (){},
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0),),
              color: ColorConstants.kTextColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(icon),
                    ),
                  ),
                ),
                Text(text,
                  style: TextStyle(
                      fontFamily: FontConstants.mainFont,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                  ),
                ),
                SizedBox()
              ],
            ),
          )
      ),
    );


  }
}
