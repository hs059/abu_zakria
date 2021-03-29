import 'package:abu_zakria_app/value/animate_do.dart';
import 'package:abu_zakria_app/value/colors.dart';
import 'package:abu_zakria_app/view/home_pages/widgets/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _childAspectRatio(double ratio) {
      return MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / ratio);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      ///defult ::: crossAxisAlignment = CrossAxisAlignment.center
      children: [
        SizedBox(
          height: 30.h,
        ),
        SizedBox(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            primary: false,
            physics: BouncingScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) {
              return SlideInRight(
                  duration: Duration(milliseconds: 700 + 300 * index),
                  child: ProductItem());
            },
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            'grid view',
            style: GoogleFonts.pacifico(fontSize: 20.sp),
          ),
        ),
        Expanded(
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemCount: 20,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: _childAspectRatio(2),
                mainAxisSpacing: 2,
                crossAxisSpacing: 2
            ),
            itemBuilder: (context, index) {
              return SlideInUp(
                  duration: Duration(milliseconds: 700 + 300 * index),
                  child: ProductItem());
            },
          ),
        ),
      ],
    );
  }
}
