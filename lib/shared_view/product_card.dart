
import 'package:ecoomerce_app/component/network_image.dart';
import 'package:ecoomerce_app/component/text_size.dart';
import 'package:ecoomerce_app/res/size_config.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final int? id;
  final String? image;
  final String? name;
  final String? categoryName;
  final String? price;
  final String? rating;
  final String? discount;
  final String? brand_name;
  final String? base_discounted_price;
  final int? row;
  final String? nameOfMarket;
  ProductCard({
    this.brand_name,
    this.categoryName,
    Key? key,
    this.row,
    this.nameOfMarket,
     this.id,
     this.image,
     this.name,
     this.price,
     this.rating,
     this.discount,
     this.base_discounted_price,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int maxline1 = 2;

  @override
  Widget build(BuildContext context) {

    if (widget.row == 1) {
      return InkWell(
        onTap: () {
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 100,
                        //height: 158,
                        // height: (( MediaQuery.of(context).size.width - 28 ) / 2) + 2,
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(3),
                            child: NetworkImageHelperforWithoutRadiusFit(
                              imagelink:widget.image,
                            ))),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.brand_name!,
                            textAlign: TextAlign.left,

                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: TextSize.Xtext,
                                height: 1.5,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.name!,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: TextSize.Xtext,
                                height: 1,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0, left: 2),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.price.toString(),
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: TextSize.ltext,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              widget.discount == "0%"
                                  ? Container()
                                  : Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.base_discounted_price
                                        .toString(),
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      decoration:
                                      TextDecoration.lineThrough,
                                      color: Colors.black87,
                                      fontSize: TextSize.mtext * 0.85,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    " ${widget.discount.toString()} off",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: TextSize.mtext * 0.8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                        
                        )
                      ],
                    ),
                  ),
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      );
    }
    if (widget.row == 9) {
      return InkWell(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      //width: double.infinity,
                      height: SizeConfig.screenWidth!/4.3,
                      width: SizeConfig.screenWidth!/3.3,
                      //height: 158,
                      // height: (( MediaQuery.of(context).size.width - 28 ) / 2) + 2,
                      child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(3),
                          child: NetworkImageHelperforWithoutRadiusFit(
                            imagelink:widget.image,
                          ))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.categoryName!,
                            textAlign: TextAlign.center,

                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: TextSize.Xtext,
                                height: 1.3,
                                fontWeight: FontWeight.w300),
                          ),
                        ),

                      ],
                    ),
                  ),
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      );
    }

    else if (widget.row == 2) {
      return InkWell(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     backButton: 1,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child:  Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.transparent,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 5),
                    width: double.infinity,

                    height: MediaQuery.of(context).size.width/3,
                    // height: (( MediaQuery.of(context).size.width - 28 ) / 2) + 2,
                    child: Stack(
                      children: [
                        Center(
                          child: ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              borderRadius: BorderRadius.circular(3),
                              child: NetworkImageHelperforWithoutRadiusFit(
                                imagelink:  widget.image,
                              )),
                        ),
                        widget.discount == "0%"
                            ? Container()
                            : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset(
                                "assets/sales.jpg",
                                height: 10,
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                Expanded(
                  //  height:((( MediaQuery.of(context).size.width - 28 ) / 2) + 2)/2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        widget.brand_name=="Others"||widget.brand_name==null?
                        SizedBox.shrink():Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.brand_name??"brand_Name",
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black87,
                                
                                height: 1,
                                fontWeight: FontWeight.w300),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.name!,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: maxline1,
                            style: TextStyle(
                                color: Colors.black87,
                                
                                height: 1,
                                fontWeight: FontWeight.w300),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0, left: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.base_discounted_price!,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.black,
                                        
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              widget.discount == "0%"
                                  ? Container()
                                  : Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rs"+widget.price.toString(),
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      decoration:
                                      TextDecoration.lineThrough,

                                      color: Colors.black87,
                                      fontSize: TextSize.mtext * 0.85,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    " ${widget.discount.toString()} off",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: TextSize.mtext * 0.8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                        
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    else if (widget.row == 4) {
      return InkWell(
        onTap: () {
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child:  Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey[350]!
                ),
                borderRadius: BorderRadius.circular(3)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                    padding: EdgeInsets.only(top: 5),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width/3.8,
                    // height: (( MediaQuery.of(context).size.width - 28 ) / 2) + 2,
                    child: Stack(
                      children: [
                        Center(
                          child: ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              borderRadius: BorderRadius.circular(3),
                              child: NetworkImageHelperforWithoutRadiusFit(
                                imagelink:  widget.image,
                              )),
                        ),
                        widget.discount == "0%"
                            ? Container()
                            : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset(
                                "assets/sales.jpg",
                                height: 10,
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),

                Expanded(
                  child: Container(
                    //  height:((( MediaQuery.of(context).size.width - 28 ) / 2) + 2)/2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                            child: Text(
                              widget.name!,
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: maxline1,
                              style: TextStyle(
                                  color: Colors.black87,
                                  
                                  height: 1,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0.0, left: 2),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      widget.base_discounted_price!,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Colors.black,
                                          
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                widget.discount == "0%"
                                    ? Container()
                                    : Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Rs"+widget.price.toString(),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        decoration:
                                        TextDecoration.lineThrough,
                                        color: Colors.black87,
                                        fontSize: TextSize.mtext * 0.85,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      " ${widget.discount.toString()} off",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: TextSize.mtext * 0.8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                          
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    else if (widget.row ==5  ) {
      return InkWell(
        onTap: () {
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
        child: Card(
          //clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            side: BorderSide(color:Colors.transparent, width: 1),
            borderRadius: BorderRadius.circular(3),

          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                            height: MediaQuery.of(context).size.width/2,
                            child: NetworkImageHelperforWithoutRadiusFit(
                              imagelink:  widget.image,
                            ),
                          )),
                    ),
                    widget.discount == "0%"
                        ? Container()
                        : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset(
                            "assets/sales.jpg",
                            height: 10,
                            width: 40,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                widget.brand_name=="Others"
                    ?SizedBox.shrink():Padding(
                  padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                  child: Text(
                    widget.brand_name!,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.grey[350],
                        
                        height: 1.4,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(1, .1, 0.1, 0),
                  child: Text(
                    widget.name!,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: TextStyle(
                        color: Colors.black87,
                        
                        height: 1.4,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0, left: 2),
                  child: Column(
                    children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.base_discounted_price!,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black,
                                
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),

                // Expanded(
                //   child: Container(
                //       padding: EdgeInsets.only(top: 5),
                //       width: double.infinity,
                //       //height: 158,
                //       // height: (( MediaQuery.of(context).size.width - 28 ) / 2) + 2,
                //       child: Stack(
                //         children: [
                //           Center(
                //             child: ClipRRect(
                //                 clipBehavior: Clip.hardEdge,
                //                 borderRadius: BorderRadius.circular(3),
                //                 child: NetworkImageHelperforWithoutRadiusFit(
                //                   imagelink:  widget.image,
                //                 )),
                //           ),
                //           widget.discount == "0%"
                //               ? Container()
                //               : Row(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Padding(
                //                       padding: const EdgeInsets.all(0.0),
                //                       child: Image.asset(
                //                         "assets/sales.jpg",
                //                         height: 10,
                //                         width: 40,
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //         ],
                //       )),
                //   flex: 2,
                // ),
                //
                // Expanded(
                //   child: Container(
                //     //  height:((( MediaQuery.of(context).size.width - 28 ) / 2) + 2)/2,
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //
                //         ],
                //       ),
                //     ),
                //   ),
                //   flex: 1,
                // ),
              ],
            ),
          ),
        ),
      );
    }
    else if (widget.row ==6  ) {
      return InkWell(

        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            //clipBehavior: Clip.antiAliasWithSaveLayer,

            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: [
                      Center(
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(3),
                            child: Container(
                              height: MediaQuery.of(context).size.width/2,
                              child: NetworkImageHelperforWithoutRadiusFit(
                                imagelink:  widget.image,
                              ),
                            )),
                      ),
                      widget.discount == "0%"
                          ? Container()
                          : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset(
                              "assets/sales.jpg",
                              height: 10,
                              width: 40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(1, 10, 0.1, 0),
                    child: Text(
                      widget.name!,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: TextStyle(
                          color: Colors.black87,
                          
                          height: 1.4,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0, left: 2),
                    child: Column(
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.base_discounted_price!,
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: TextSize.Xtext,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 5.0),
                  //   child: SizedBox(
                  //     height: 1,
                  //     child: Container(
                  //       color: Colors.grey[300],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(1, 5, 0.1, 0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "View Now ",
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: TextStyle(
                                color: Colors.black,
                                
                                height: 1.4,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
        onTap: (){
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
      );
    }
    else {
      return InkWell(
        onTap: () {
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ProductDetails(
          //     id: widget.id,
          //     percentOFDiscount: widget.discount,
          //   );
          // }));
        },
        child: Card(
          //clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            side: BorderSide(color:Colors.black38, width: .5),
            borderRadius: BorderRadius.circular(0),

          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width/2.4,
                      width: MediaQuery.of(context).size.width/2,
                      child: Center(
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(3),
                            child: Container(
                              height: MediaQuery.of(context).size.width/2,
                              child: NetworkImageHelperforWithoutRadiusFit(
                                imagelink:  widget.image,
                              ),
                            )),
                      ),
                    ),
                    widget.discount == "0%"
                        ? Container()
                        : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset(
                            "assets/sales.jpg",
                            height: 10,
                            width: 40,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.brand_name=="Others"?
                        SizedBox.shrink(): Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.brand_name??"",
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black87,
                                
                                height: 1.4,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 0.1, 0),
                          child: Text(
                            widget.name!,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.black87,
                                
                                height: 1.4,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0, left: 2),
                          child: Column(
                            children: [
                              widget.discount == "0%"
                                  ? Container()
                                  : Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rs"+widget.price.toString(),
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      decoration:
                                      TextDecoration.lineThrough,
                                      color:Colors.black87,
                                      fontSize: TextSize.mtext * 0.85,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    " ${widget.discount.toString()} off",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: TextSize.mtext * 0.8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.base_discounted_price??"price",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color:Colors.black,
                                        
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        // widget.rating!=null?Container(
                        // 
                        // ):Container(
                        //   height: 0,
                        //   width: 0,
                        // )
                      ],
                    ),
                  ),
                ),

                // Expanded(
                //   child: Container(
                //       padding: EdgeInsets.only(top: 5),
                //       width: double.infinity,
                //       //height: 158,
                //       // height: (( MediaQuery.of(context).size.width - 28 ) / 2) + 2,
                //       child: Stack(
                //         children: [
                //           Center(
                //             child: ClipRRect(
                //                 clipBehavior: Clip.hardEdge,
                //                 borderRadius: BorderRadius.circular(3),
                //                 child: NetworkImageHelperforWithoutRadiusFit(
                //                   imagelink:  widget.image,
                //                 )),
                //           ),
                //           widget.discount == "0%"
                //               ? Container()
                //               : Row(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Padding(
                //                       padding: const EdgeInsets.all(0.0),
                //                       child: Image.asset(
                //                         "assets/sales.jpg",
                //                         height: 10,
                //                         width: 40,
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //         ],
                //       )),
                //   flex: 2,
                // ),
                //
                // Expanded(
                //   child: Container(
                //     //  height:((( MediaQuery.of(context).size.width - 28 ) / 2) + 2)/2,
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //
                //         ],
                //       ),
                //     ),
                //   ),
                //   flex: 1,
                // ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
