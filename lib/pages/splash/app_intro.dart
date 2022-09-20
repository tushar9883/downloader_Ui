import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash/main.dart';
import 'package:splash/pages/home/home_screen.dart';
import 'package:splash/pages/splash/widget/intro_slide.dart';

class AppIntro extends StatefulWidget {
  const AppIntro({Key? key}) : super(key: key);

  @override
  State<AppIntro> createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  PageController controller = PageController();
  bool onLastpage = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final color = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'dark'
        : 'white';
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: PageView(
                    controller: controller,
                    children: const [
                      IntroSlide(
                        image: 'assets/images/whatsapp_intro.png',
                        title: 'WhatsApp Status',
                        des:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
                      ),
                      IntroSlide(
                        image: 'assets/images/facebook_intro.png',
                        title: 'Facebook Stories',
                        des:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
                      ),
                      IntroSlide(
                        image: 'assets/images/instagram_intro.png',
                        title: 'Instagram Stories',
                        des:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
                      ),
                    ],
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                        onLastpage = (index == 2);
                      });
                    },
                  ),
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: const Color(0xff2B62F6),
                    dotWidth: 6.w,
                    dotHeight: 6.h,
                    dotColor: const Color(0xff858597),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30.r),
                onTap: () {
                  currentIndex == 2
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homescreen(),
                          ),
                        )
                      : controller.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                },
                child: Container(
                  padding: currentIndex == 2
                      ? EdgeInsets.symmetric(
                          horizontal: 50.w,
                          vertical: 12.h,
                        )
                      : EdgeInsets.symmetric(
                          horizontal: 80.w,
                          vertical: 12.h,
                        ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff2B62F6),
                    ),
                    color: currentIndex == 2
                        ? const Color(0xff2B62F6)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Text(
                    currentIndex == 2 ? 'Get Started' : 'Next',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: currentIndex == 2
                          ? Colors.white
                          : const Color(0xff2B62F6),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
