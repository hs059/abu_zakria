import 'package:abu_zakria_app/value/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          height: 200.h,
          width: 150.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 2),
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.r),
                        topLeft: Radius.circular(6.r),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text('image'),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                          topRight:  Radius.circular(10.r),
                          topLeft: Radius.circular(6.r),
                          bottomRight: Radius.circular(10.r),
                          bottomLeft:  Radius.circular(10.r),
                        ),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'product for man',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '5 ₪',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '5 ₪',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 20.h,
                          width: 40.w,
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: Text(
                            '34 % off',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
