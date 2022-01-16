import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../res/app_color.dart';
import '../res/size_config.dart';
import 'appbar.dart';

int selectedIndex = 0;

class DashboardSkeleton extends StatefulWidget {
  final Widget children;
  final bool header;
  final bool footer;
  const DashboardSkeleton(
      {Key? key,
      required this.children,
      this.header = true,
      this.footer = true})
      : super(key: key);

  @override
  _DashboardSkeletonState createState() => _DashboardSkeletonState();
}

class _DashboardSkeletonState extends State<DashboardSkeleton> {
  void callHome() {
    setState(() {
      selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final height = SizeConfig.safeBlockVertical ?? 400;
    final width = SizeConfig.safeBlockHorizontal ?? 300;

    return Scaffold(

      floatingActionButton: widget.footer
          ? Container(
              height: height * 8.5,
              width: height * 8.5,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: AppColor.mainCOLOR,
                isExtended: true,
                onPressed: () {
                  //context.router.push(CartScreenRoute());
                },
                child: SizedBox(
                  child: SvgPicture.asset('./assets/svg/shopping.svg',
                      color: Colors.white,
                      height: width * 5,
                      semanticsLabel: 'shopping cart'),
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: widget.footer
          ? Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: BottomAppBar(
                  elevation: 20,
                  color: Colors.white,
                  shape: const CircularNotchedRectangle(),
                  notchMargin: width,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height,
                      right: width * 5,
                      left: width * 5,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: width * 2.8),
                            child: InkWell(
                              onTap: callHome,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.home,
                                    size: width * 8,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: height,
                                  ),
                                  if (selectedIndex == 0)
                                    Container(
                                      height: height * 0.6,
                                      width: width * 8,
                                      color: AppColor.mainCOLOR,
                                    )
                                  else
                                    Container(
                                      height: height * 0.6,
                                      width: width * 8,
                                      color: Colors.white,
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 8),
                            child: InkWell(
                              // onTap: callNotification,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.notifications_on,
                                    size: width * 8,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: height,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 8),
                            child: InkWell(
                              // onTap: callSettings,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.settings,
                                    size: width * 8,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: height,
                                  ),
                                  if (selectedIndex == 2)
                                    Container(
                                      height: height * 0.6,
                                      width: width * 8,
                                      color: AppColor.mainCOLOR,
                                    )
                                  else
                                    Container(
                                      height: height * 0.6,
                                      width: width * 8,
                                      color: Colors.white,
                                    )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 2.8),
                            child: InkWell(

                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: width * 8,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: height,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                  )),
            )

          ///previous nav bar
          // Container(
          //         height: height * 8,
          //         child: BottomNav(
          //           width: width,
          //         ),
          //       )
          : null,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (widget.header)
                CustomAppBar(width: width, height: height)
              else
                Container(),
              widget.children,
            ],
          ),
        ),
      ),
    );
  }
}

// class BottomNav extends StatefulWidget {
//   final width;
//   const BottomNav({
//     Key key,
//     this.width,
//   }) : super(key: key);
//
//   @override
//   _BottomNavState createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//   List<Widget> pageList = List<Widget>();
//   int _selectedPageIndex = 0;
//   @override
//   void initState() {
//     pageList.add(DashboardScreen());
//     pageList.add(DashboardScreen());
//     pageList.add(DashboardScreen());
//
//     pageList.add(ProfileScreen());
//
//     super.initState();
//   }
//
//   void _selectPage(int index) {
//     switch (index) {
//       case 0:
//         {
//           Navigator.pushReplacement(
//               context,
//               PageRouteBuilder(
//                   transitionDuration: Duration(milliseconds: 1),
//                   pageBuilder: (_, __, ___) => DashboardScreen()));
//         }
//         break;
//       case 1:
//         {
//           CommonUtils.navigate(
//             context,
//             NotificationScreen(),
//             finish: false,
//           );
//         }
//         break;
//       case 4:
//         {
//           // Navigator.pushReplacement(
//           //     context,
//           //     PageRouteBuilder(
//           //         transitionDuration: Duration(milliseconds: 1),
//           //         pageBuilder: (_, __, ___) => ProfileScreen()));
//           CommonUtils.navigate(
//             context,
//             ProfileScreen(),
//             finish: false,
//           );
//         }
//         break;
//       default:
//         {
//           Navigator.pushReplacement(
//               context,
//               PageRouteBuilder(
//                   transitionDuration: Duration(milliseconds: 1),
//                   pageBuilder: (_, __, ___) => DashboardScreen()));
//           // CommonUtils.navigate(
//           //   context,
//           //   DashboardScreen(),
//           //   finish: true,
//           // );
//         }
//     }
//     setState(() {
//       _selectedPageIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     final height = SizeConfig.safeBlockVertical;
//     final width = SizeConfig.safeBlockHorizontal;
//     return BottomNavigationBar(
//       elevation: 30,
//       backgroundColor: Colors.white,
//       selectedItemColor: Colors.grey,
//       unselectedItemColor: Colors.grey,
//       type: BottomNavigationBarType.fixed,
//       selectedFontSize: widget.width * 2.5,
//       unselectedFontSize: widget.width * 2.5,
//       currentIndex: 0,
//       onTap: (int i) => _selectPage(i),
//       items: [
//         BottomNavigationBarItem(
//           icon: Badge(
//             badgeColor: Color(0xff57B7EB),
//             badgeContent: SizedBox(
//               height: height * 0.5,
//             ),
//             child: Icon(
//               Icons.home,
//               size: width * 6,
//             ),
//           ),
//           label: 'Mailo',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.notifications_on,
//             size: width * 6,
//           ),
//           label: 'Notification',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.shopping_cart,
//             color: Colors.white,
//             //color: Theme.of(context).primaryColor,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.settings,
//             size: width * 6,
//           ),
//           label: 'Settings',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.person,
//             size: width * 6,
//           ),
//           label: 'Account',
//         ),
//       ],
//     );
//   }
// }
