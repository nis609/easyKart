
import 'package:ecoomerce_app/component/misc.dart';
import 'package:ecoomerce_app/component/network_image.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_type.dart';
import 'package:ecoomerce_app/module/home_screen/views/widget/wishlist.dart';
import 'package:ecoomerce_app/res/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget productTypeForHomePage(BuildContext context,ProductModal productType,String){

return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0.0),
  child: Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(

        children: [
           Stack(
             children: [

               Center(
                 child: Container(
                     width: SizeConfig.screenWidth!/3,
                     height: SizeConfig.screenWidth!/3,
                     child: getImages(context,productType)),
               ),
               Align(
                   alignment: Alignment.centerRight,
                   child: WishList()),
             ],
           ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: BoldText(productType.category!.first.toString(),color: Colors.grey.shade400,fontSize: 12,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: BoldTexts(productType.name.toString(),color: Colors.black54.withOpacity(.7),fontSize: 16,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: BoldText("NRs. "+productType.price.toString(),color: Colors.orange.shade300,fontSize: 14,),
              ),

            ],
          ),



        ],
      ),
    ),
  ),
);


}
Widget getImages(BuildContext context,ProductModal productType){
  return Center(
    child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(3),
        child: NetworkImageHelperforWithoutRadiusFit(
          imagelink: productType.images?.first.toString(),
        )),
  );
}


