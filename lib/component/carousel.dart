// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import '../res/app_color.dart';
// import '../res/size_config.dart';
//
// class CarouselWithIndicatorDemo extends StatefulWidget {
//   final List<String> imgList;
//
//   const CarouselWithIndicatorDemo({Key ?key, required this.imgList}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     return _CarouselWithIndicatorState();
//   }
// }
//
// class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
//   int _current = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//
//     final width = SizeConfig.safeBlockHorizontal??45;
//     return Column(children: [
//       SizedBox(
//         height: width * 45,
//         width: double.infinity,
//         child: CarouselSlider(
//           items: widget.imgList
//               .map((item) => Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 20),
//                     //width: width * 98,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(item),
//                           fit: BoxFit.contain,
//                         ),
//                         borderRadius: BorderRadius.circular(25)),
//                   ))
//               .toList(),
//           options: CarouselOptions(
//               autoPlay: true,
//               viewportFraction: 1,
//               // enlargeCenterPage: false,
//               // height: height * 25,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _current = index;
//                 });
//               }),
//         ),
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: widget.imgList.map(
//           (image) {
//             //these two lines
//             int index = widget.imgList.indexOf(image); //are changed
//             return Container(
//               width: 8,
//               height: 8,
//               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _current == index
//                       ? AppColor.mainCOLOR
//                       : const Color.fromRGBO(0, 0, 0, 0.4)),
//             );
//           },
//         ).toList(),
//       ),
//     ]);
//   }
// }
//
// // final List<String> imgList = [
// //   "./assets/dummy/coolb.png",
// //   "./assets/dummy/levis.png",
// //   "./assets/dummy/bigmart.png",
// // ];
