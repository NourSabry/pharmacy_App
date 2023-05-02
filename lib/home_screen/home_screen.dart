import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/common/blue_indicators/blue_row_indicator.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';
import 'package:pharmacy_app/home_screen/widgets/articles.dart';
import 'package:pharmacy_app/home_screen/widgets/brand_container.dart';
import 'package:pharmacy_app/home_screen/widgets/category.dart';
import 'package:pharmacy_app/home_screen/widgets/discount_category.dart';
import 'package:pharmacy_app/home_screen/widgets/grid_category.dart';
import 'package:pharmacy_app/home_screen/widgets/services.dart';
import 'package:pharmacy_app/home_screen/widgets/title.dart';

import 'package:pharmacy_app/home_screen/widgets/top_container.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TopContainer(),
              const RowTitle(
                text1: " أحدث المنتجات",
                text2: "عرض الكل",
              ),
              SizedBox(
                width: size.width - 30,
                height: 240.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Category(),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      )),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 236, 234, 234),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                width: size.width,
                height: 70.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Services(),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      )),
                ),
              ),
              const RowTitle(
                text1: " صحة وجمال",
                text2: "عرض الكل",
              ),
              SizedBox(
                width: size.width - 30,
                height: 270.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DiscountCategory(),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      )),
                ),
              ),
              const ArticlesContainer(),
              SizedBox(
                width: size.width - 30,
                height: 170.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 220.w,
                            height: 150.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                "assets/images/sale.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.h, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    BlueRowIndicators(
                      currentIndex: 0,
                    ),
                  ],
                ),
              ),
              const RowTitle(
                text1: "الأكثر طلبًا",
                text2: "عرض الكل",
              ),
              SizedBox(
                width: size.width - 30,
                height: 270.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Category(),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      )),
                ),
              ),
              const RowTitle(
                text1: "تسوق بالعلامات التجارية",
                text2: "عرض الكل",
              ),
              SizedBox(
                width: size.width - 30,
                height: 100.h,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const BrandsContainer(),
                          SizedBox(
                            width: 10.w,
                          )
                        ],
                      )),
                ),
              ),
              const RowTitle(
                text1: "منتجات طبية",
                text2: "عرض الكل",
              ),
              SizedBox(
                width: size.width,
                height: 600.h,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: ((context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GridCategory(),
                          SizedBox(
                            width: 1.w,
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
