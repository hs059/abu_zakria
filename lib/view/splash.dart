





import 'package:abu_zakria_app/value/animate_do.dart';
import 'package:abu_zakria_app/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

import 'home_pages/screens/main_home_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    var delay = Duration(seconds: 3);

    Future.delayed(delay, () {
      // Get.off(Onboarding()); in get we use a simple code to navigator
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ZoomIn(
            duration: Duration(milliseconds: 1500),
            animate: true,
            child: CustomSvgImage(
              imageName: "logo",
              width: 216.w,
              height: 164.h,
            )),
      ),
    );
  }
}
