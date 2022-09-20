import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroSlide extends StatelessWidget {
  final String image;
  final String title;
  final String des;

  const IntroSlide({
    Key? key,
    required this.image,
    required this.title,
    required this.des,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.r),
            bottomLeft: Radius.circular(40.r),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 1.6,
            width: MediaQuery.of(context).size.width,
            // height: 518.h,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
              // color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50.w,
            ),
            child: Text(
              des,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                // color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
