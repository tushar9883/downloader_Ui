import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FacebookScreen extends StatelessWidget {
  const FacebookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1877F2),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.r),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 24.r,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 48.h,
                    width: 48.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/facebook_white.png',
                      height: 40.h,
                      width: 40.h,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'Facebook',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 40.h,
                    margin: EdgeInsets.symmetric(
                      horizontal: 22.w,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: const Color(0xffF5F7F9),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorColor: const Color(0xFF2B62F6),
                            maxLines: 1,
                            decoration: const InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'https://fb.video.dajf54/gfdh567...',
                            ),
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 21.w,
              ),
              child: Text(
                'millebobby',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            // Column(
            //   children: [
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(10.r),
            //       child: Image.asset(
            //         'assets/images/bg.png',
            //         height: 108.h,
            //         width: 103.h,
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
