


import 'package:abu_zakria_app/server/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'fav.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> screen = [
    FavScreen(),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    Container(color: Colors.blue,),
    Container(color: Colors.brown,),
  ] ;
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
    AppProvider appProviderFalse = Provider.of<AppProvider>(context,listen: false); /// to function

    return Scaffold(
      /// child: CustomAppBar(>>>>>>>>>),  when you use custom app bar you must wrap it with PreferredSize
    // appBar: PreferredSize(
    //     preferredSize: Size(MediaQuery.of(context).size.width,AppBar().preferredSize.height),
    //   child: ,
    //   ),
      appBar: AppBar(title: Text('my App'),),
      body: screen[appProvider.indexScreen],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xfffafafa),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, -10),
              blurRadius: 20,
            ),
          ],
        ),
        child: BottomNavigationBar(
          /// you can change this setting .
          elevation: 0,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.grey.shade50,
          currentIndex: appProvider.indexScreen,
          onTap: appProviderFalse.setIndexScreen,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite,color: Colors.green,),
              icon:Icon(Icons.favorite_border,color: Colors.red,),
              label: "",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings,color: Colors.green,),
              icon:Icon(Icons.settings,color: Colors.red,),
              label: "",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.phone,color: Colors.green,),
              icon:Icon(Icons.phone,color: Colors.red,),
              label: "",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.add_alert,color: Colors.green,),
              icon:Icon(Icons.add_alert,color: Colors.red,),
              label: "",
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                height: 33.h,
                width: 33.w,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2.w),
                ),
              ),
              icon: Container(
                height: 33.h,
                width: 33.w,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.w),
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
