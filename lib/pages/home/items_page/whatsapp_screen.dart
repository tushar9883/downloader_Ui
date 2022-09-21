import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatsAppScreen extends StatelessWidget {
  WhatsAppScreen({Key? key}) : super(key: key);

  List items = [
    {
      'image':
          'https://images.pexels.com/photos/2387418/pexels-photo-2387418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'image':
          'https://images.pexels.com/photos/3220900/pexels-photo-3220900.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'image':
          'https://images.pexels.com/photos/6711102/pexels-photo-6711102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    // {
    //   'image':
    //       'https://images.pexels.com/photos/3178392/pexels-photo-3178392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    // },
    // {
    //   'image':
    //       'https://images.pexels.com/photos/2134664/pexels-photo-2134664.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    // },
    // {
    //   'image':
    //       'https://images.pexels.com/photos/2422463/pexels-photo-2422463.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    // },
    // {
    //   'image':
    //       'https://images.pexels.com/photos/6004828/pexels-photo-6004828.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    // },
    // {
    //   'image':
    //       'https://images.pexels.com/photos/33284/butterfly-matting-macro-macro-photography.jpg?auto=compress&cs=tinysrgb&w=1600',
    // },
    // {
    //   'image':
    //       'https://images.pexels.com/photos/54332/currant-immature-bush-berry-54332.jpeg?auto=compress&cs=tinysrgb&w=1600',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF25D366),
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
                      color: Colors.green,
                    ),
                    child: Image.asset(
                      'assets/images/whatsapp_white.png',
                      height: 40.h,
                      width: 40.h,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'Whatsapp',
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                    itemCount: items.length,
                    // padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // crossAxisSpacing: 20.w,
                      // mainAxisSpacing: 20.h,
                    ),
                    addRepaintBoundaries: false,
                    addSemanticIndexes: false,
                    addAutomaticKeepAlives: false,
                    shrinkWrap: false,
                    cacheExtent: 0,
                    dragStartBehavior: DragStartBehavior.start,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      var data = items[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                        ),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.network(
                                  '${data['image']}',
                                  height: 108.h,
                                  width: 103.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // height: 28.h,
                              // width: 103.w,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                // color: Color(0xff2B62F6),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Text(
                                'Download',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
