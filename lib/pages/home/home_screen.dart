import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash/pages/home/items_page/facebook_screen.dart';
import 'package:splash/pages/home/items_page/whatsapp_screen.dart';
import 'package:splash/pages/home/widget/header.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);

  List items = [
    {
      'image': 'assets/images/facebook_icon.png',
      'title': 'Facebook',
    },
    {
      'image': 'assets/images/whatsapp_icon.png',
      'title': 'Whatsapp',
    },
    {
      'image': 'assets/images/instagram_icon.png',
      'title': 'Instagram',
    },
    {
      'image': 'assets/images/likee_icon.png',
      'title': 'Likee',
    },
    {
      'image': 'assets/images/sharechat_icon.png',
      'title': 'ShareChat',
    },
    {
      'image': 'assets/images/twitter_icon.png',
      'title': 'Twitters',
    },
    {
      'image': 'assets/images/snapchat_icon.png',
      'title': 'Snapchat',
    },
    {
      'image': 'assets/images/tiktok_icon.png',
      'title': 'Tiktok',
    },
    {
      'image': 'assets/images/vimeo_icon.png',
      'title': 'Vimeo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160.h,
                  child: Stack(
                    children: [
                      const Header(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 21.w,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 12.h,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 100.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Copy link & Click Here',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 40.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
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
                                          hintText:
                                              'https://fb.video.dajf54/gfdh567...',
                                        ),
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 21.w,
                  ),
                  child: Text(
                    'Open App & Copy link',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.w,
                    ),
                    child: GridView.builder(
                        itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 40.w,
                          mainAxisSpacing: 24.h,
                        ),
                        itemBuilder: (
                          context,
                          index,
                        ) {
                          var data = items[index]['title'];
                          return InkWell(
                            onTap: () {
                              print(data);
                              if (data == 'Facebook') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FacebookScreen(),
                                  ),
                                );
                              } else if (data == 'Whatsapp') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WhatsAppScreen(),
                                  ),
                                );
                              }
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => FacebookScreen(),
                              //   ),
                              // );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Image.asset(
                                    '${items[index]['image']}',
                                    height: 60.h,
                                    width: 60.h,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '${items[index]['title']}',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
