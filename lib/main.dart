import 'package:abu_zakria_app/server/app_provider.dart';
import 'package:abu_zakria_app/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(
          create: (context) => AppProvider(),
        ),

        ///you can add more provider .
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        /// we wrap initScreen Util and pass height and width xd screen
        /// height:22.h
        /// width:22.w
        /// size:22.r
        /// radius:22.r
        /// fontSize:22.sp
        /// padding >> vertical .h >> top : .h  eltc
        home: ScreenUtilInit(
            allowFontScaling: true,
            designSize: Size(375,812),
            builder:() =>  Splash()),
      ),
    );
  }
}
