import 'package:ecoomerce_app/component/misc.dart';
import 'package:ecoomerce_app/component/nav_drawer.dart';
import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:ecoomerce_app/module/home_screen/models/category_modal/category_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_data.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_type.dart';
import 'package:ecoomerce_app/module/home_screen/provider/home_provider_global.dart';
import 'package:ecoomerce_app/module/home_screen/repository/home_repository.dart';
import 'package:ecoomerce_app/module/home_screen/views/widget/banner_slider.dart';
import 'package:ecoomerce_app/module/home_screen/views/widget/list_of_products_type.dart';
import 'package:ecoomerce_app/res/app_asset.dart';
import 'package:ecoomerce_app/res/size_config.dart';
import 'package:ecoomerce_app/shared_view/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';



// final essentailProductFutureProvider =FutureProvider.autoDispose<List<CategoryModal>>((ref) {
// return ref.watch(HomeProvider).getBanner();
// });
final bannerFutureProvider=FutureProvider.autoDispose<List<BannerModal>>((ref) {
  return ref.watch(HomeProvider).getBanner();
});
final productTypeFutureProvider=FutureProvider.autoDispose<ProductData>((ref) {
  return ref.watch(HomeProvider).getListOfProducts();
});
final categoryProvider =FutureProvider.autoDispose<List<CategoryModal>>((ref) {
  return ref.watch(HomeProvider).getCategoryList();
});
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _showAppBar = false;
  bool _showAppBars = false;
  bool scrollListener(ScrollNotification scrollInfo) {

    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      if (scrollInfo.metrics.pixels > 30) {
        setState(() {

          _showAppBar=false;
          // _showAppBars=false;
        });
      } else {
        setState(() {
   ;
          _showAppBar=false;
          //_showAppBars=false;
        });
      };
      return scroll = true;
    }
    return scroll;
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    final height = SizeConfig.screenHeight!;
    return SafeArea(
      top: true,


      child: Scaffold(
        backgroundColor: Colors.grey.shade200.withOpacity(.8),
          drawer: NavDrawer(),

body: Consumer(builder: (context, watch, child) {
  return watch(productTypeFutureProvider).when(
      data: (data) {
        final trendingProductData =data.productType?.trendingProductData;
        final topDealProductData =data.productType?.topDealProductData;
        final hotProductData =data.productType?.hotProductData;
        final topRatedProductDatatopRated =data.productType?.topRatedProductDatatopRated;
        final easyMallProductDatatopRated =data.productType?.easyMallProductDatatopRated;
        final bestSellerProductData =data.productType?.bestSellerProductData;
        return CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),


            slivers: [
              _showAppBar ==true ? Appbar(width!, "") : Appbar(
                  width!, ""),
              // _showAppBar ==true ? Search(width, "") :   SliverList(delegate: SliverChildListDelegate([
              //   SizedBox.shrink()
              // ])),

              // _showAppBars ==true ? NotificationAppbar(width, "") :   SliverList(delegate: SliverChildListDelegate([
              //   SizedBox.shrink()
              // ]))

              SliverToBoxAdapter(
                child: _dashBody(height, width) ,
              ),
              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoldText("Trending ",color: Colors.black87,fontSize: 18
                      ,),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: trendingProductData!.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                color: Colors.white,
                                height: SizeConfig.screenWidth!/1.8,
                                width:SizeConfig.screenHeight!/4.2,child: productTypeForHomePage(context,e,"Trending")),
                          );
                        }).toList(),
                      ),
                    ),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoldText("Best Seller ",color: Colors.black87,fontSize: 18
                      ,),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: bestSellerProductData!.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                color: Colors.white,
                                height: SizeConfig.screenWidth!/1.8,
                                width:SizeConfig.screenHeight!/4.2,child: productTypeForHomePage(context,e,"Trending")),
                          );
                        }).toList(),
                      ),
                    ),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoldText("Hot Products ",color: Colors.black87,fontSize: 18
                      ,),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: hotProductData!.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                color: Colors.white,
                                height: SizeConfig.screenWidth!/1.8,
                                width:SizeConfig.screenHeight!/4.2,child: productTypeForHomePage(context,e,"Trending")),
                          );
                        }).toList(),
                      ),
                    ),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoldText("Top Deals ",color: Colors.black87,fontSize: 18
                      ,),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: .85
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 2),
                      child: productTypeForHomePage(context,topDealProductData![index],"Trending"),
                    );
                  },
                  childCount: topDealProductData?.length,
                ),
              ),


              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoldText("Top rated ",color: Colors.black87,fontSize: 18
                      ,),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: .85
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 2),
                      child: productTypeForHomePage(context,topRatedProductDatatopRated![index],"Trending"),
                    );
                  },
                  childCount: topRatedProductDatatopRated?.length,
                ),
              ),



              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoldText("Easy Mall ",color: Colors.black87,fontSize: 18
                      ,),
                  )

                // ListView.builder(
                //   itemCount: data.productType?.easyMallProductDatatopRated?.length,
                //   itemBuilder: (context, index) {
                //     return productTypeForHomePage(context,data.productType?.easyMallProductDatatopRated,index);
                //   }
                // ) ,
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: .85
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 2),
                      child: productTypeForHomePage(context,easyMallProductDatatopRated![index],"Trending"),
                    );
                  },
                  childCount: easyMallProductDatatopRated?.length,
                ),
              ),

            ]


        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, s) {
        return Text('$e');
      });
})






      ),
    );
  }
  Widget _dashBody(double height, double width) {
    return  Column(
      children: [
        Container(
          height: height/4,
          width: SizeConfig.screenWidth,
          child: Consumer(builder: (context, watch, child) {
            return watch(bannerFutureProvider).when(
                data: (data) {
                  final a =data.length;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: data.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: BannerSlider(imageList: data,),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (e, s) {
                  return Text('$e');
                });
          }),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: SizeConfig.screenHeight!/2.5, minHeight: SizeConfig.screenHeight!/5),
          child: Consumer(builder: (context, watch, child) {
            return watch(categoryProvider).when(
                data: (data) {
                  final a =data.length;
                  return  GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,

                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,// to disable GridView's scrolling
                    shrinkWrap: true, // You won't see infinite size error
                    children: data.map((e) {

                      return   ProductCard(

                        row: 9,
                        categoryName: e.name,

                        image: e.image,

                      );
                    }).toList(),
                  );
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: data.map((e) {

                          return   Container(
                            height: 150,width: 150,
                            child: ProductCard(

                              row: 9,
                              categoryName: e.name,

                              image: e.image,

                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (e, s) {
                  return Text('$e');
                });
          }),
        ),

      ],
    );
  }
  Widget Appbar(double width,String title){
    return  SliverAppBar(
      expandedHeight: width/3.5,
      floating: true,
      pinned: false,
      toolbarHeight: width/7.5,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black87),


      //backgroundColor: AppColor.appNameThemeColor,

      // flexibleSpace: FlexibleSpaceBar(
      //   centerTitle: true,
      //
      //   title: Text("Purnapaath",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 16.0,
      //       )),
      //   background: Image.network(
      //     "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
      //     fit: BoxFit.cover,
      //   )
      // ),
      actions: [
        IconButton(
          icon: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey[200]!
                  ),
                  shape: BoxShape.circle
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.search,size: 20,),
              )),

          onPressed: ()  {
            setState(() {
              _showAppBar = !_showAppBar;
              _showAppBars=false;
            });
          },

        ),
        IconButton(
          icon: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey[200]!
                  ),
                  shape: BoxShape.circle
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.add_alert,size: 20,),
              )),
          onPressed: ()  {
            setState(() {
              _showAppBars = !_showAppBars;
              _showAppBar=false;

            });
          },

          // _onShare(context,widget.url,
        )

      ],
      flexibleSpace: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),
                  child: Image.asset(AppAsset.appLOGO,height: 30,),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Container(
                      color:Colors.black45,
                      width: MediaQuery.of(context).size.width/1.25,
                      height: MediaQuery.of(context).size.width/12,
                      child: Center(
                        child: TextField(
                          autofocus: false,
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                          decoration: InputDecoration(

                            filled: true,
                            fillColor:Colors.black45,
                            hintText: 'Search',

                            hintStyle: TextStyle(fontSize: 15.0, color: Colors.white,),
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color:Colors.yellow,
                      width: MediaQuery.of(context).size.width/12,
                      height: MediaQuery.of(context).size.width/12,
                      child: Icon(Icons.search,size: 25,) ,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
