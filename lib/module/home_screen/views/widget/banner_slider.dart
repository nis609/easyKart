
import 'package:ecoomerce_app/component/network_image.dart';
import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_data.dart';
import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:ecoomerce_app/res/size_config.dart';
import 'package:ecoomerce_app/shared_view/full_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  BannerSlider({ this.imageList});

  final List<BannerModal>? imageList;

  @override
  Widget build(BuildContext context) {
    return imageList==null?SizedBox.shrink():Container(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: CarouselSlider(
          items: imageList!.map((i) {
            return InkWell(
                onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context){
    return SliderShowFullmages(
    listImagesModel: imageList!,
      current: 0,


    );
    }));},
                child: _bannerImage(i));
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 2.5,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayCurve: Curves.easeIn,
            enlargeCenterPage: true,

            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {

              // setState(() {
              //   _current_slider = index;
              // });
            },
          ),
        ),
      ),
    );
  }

  Widget _bannerImage(BannerModal banner) {

    return Builder(
      builder: (BuildContext context) {
        return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                NetworkImageHelperforWithoutRadiusFit(
                  imagelink: banner.image,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(0, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 0.0),
                  ),
                ),
              ],
            ));
      },
    );
  }
}