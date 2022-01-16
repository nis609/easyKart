import 'package:ecoomerce_app/module/login/widget/profile/as.dart';
import 'package:ecoomerce_app/module/login/widget/profile/icon_title_row.dart';
import 'package:ecoomerce_app/module/login/widget/profile/not_login.dart';
import 'package:ecoomerce_app/res/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_phone.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? height=SizeConfig.screenWidth!/100;
    double? width=SizeConfig.screenWidth!;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black54,
        title: Text("Profile"),
        elevation: 2,

      ),
      body: Column(
        children: [

          _notloginWidget(height, width, false,context),
          _getMoreSection(height, width, false,context),

        ],

      ),
    );
  }
  Widget _notloginWidget(double height, double width, bool isLogin,BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),

      child: Container(
        decoration: BoxDecoration(

            border: Border.all(
              color: Colors.grey
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: _getText(height, width, isLogin)),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: true,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginPhone();
                    }));

          },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        width: width/3,
                        height: width/8,
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: BuildText(
                            text: "LOGIN",
                            color: Colors.grey,
                            weight: FontWeight.bold,
                            height: width / 30,
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget _getText(double height, double width, bool isLogin) {
    return Column(
      children: [
        BuildText(
            text: isLogin ? "Sujan Man Tuladhar" : "You are not Logged In",
            height: isLogin ? height * 1.3 : height * 3.5,
            weight: isLogin ? FontWeight.w300 : FontWeight.w500)
      ],
    );
  }
  Widget _getMoreSection(double height, double? width, bool isLogin,BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: isLogin,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BuildText(
                    text: 'Account Information',
                    height: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              IconTitleRow(
                height: width! / 20,
                title: 'Wallet',
                image: "assets/wallet.svg",
                divider: true,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Wallet()),
                  // );
                },
                isIcon: false,
                textColor: Colors.black.withOpacity(0.8),
              ),
              IconTitleRow(
                height: width / 20,
                title: 'Order',
                image: "assets/order.svg",
                divider: true,
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return OrderList(from_checkout: false);
                  // }));
                },
                isIcon: false,
                textColor: Colors.black.withOpacity(0.8),
              ),
              IconTitleRow(
                height: width / 20,
                title: 'Address',
                image: "assets/address.svg",
                divider: true,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AddressPage()),
                  // );
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Address1();
                  // }));
                },
                isIcon: false,
                textColor: Colors.black.withOpacity(0.8),
              ),
              // IconTitleRow(
              //   height: height * 1.3,
              //   title: 'Notification',
              //   image: "assets/notification.svg",
              //   divider: false,
              //   onPressed: () {
              //     // Navigator.push(
              //     //   context,
              //     //   MaterialPageRoute(builder: (context) => Nofication()),
              //     // );
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           return Nofication();
              //         },
              //       ),
              //     );
              //   },
              //   isIcon: false,
              //   textColor: Colors.black.withOpacity(0.8),
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: BuildText(
              text: 'Information',
              height: 18,
              color: Colors.black,
            ),
          ),
        ),
        ExpansionTile(
          backgroundColor: Colors.white,
          collapsedBackgroundColor: Colors.white,
          textColor: Colors.black87,
          title: ListTile(
            contentPadding: EdgeInsets.all(0),
            // leading: SvgPicture.asset(
            //   "assets/about.svg",
            //   height: 25,
            //   width: 25,
            // ),
            title: Text(
              "About us",
              style: TextStyle(
                  fontSize: height *4, fontWeight: FontWeight.w500),
            ),
          ),
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.only(left: 50),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return HtmlPolicyView(
                //         html: supportHtml,
                //         title: "Suport Policy",
                //       );
                //     },
                //   ),
                // );
              },
              title: Text(
                "Support policy",
                style: TextStyle(

                    fontWeight: FontWeight.w300, fontSize: height * 3),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 50),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return HtmlPolicyView(
                //         html: sellherHtml,
                //         title: "Seller Policy",
                //       );
                //     },
                //   ),
                // );
              },
              title: Text(
                "Seller policy",
                style: TextStyle(
                    fontWeight: FontWeight.w300, fontSize: height *3),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 50),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return HtmlPolicyView(
                //         html: returnHtml,
                //         title: "Return Policy",
                //       );
                //     },
                //   ),
                // );
              },
              title: Text(
                "Return policy",
                style: TextStyle(
                    fontWeight: FontWeight.w300, fontSize: height * 3),
              ),
            ),
            // ListTile(
            //   contentPadding: EdgeInsets.only(left: 50),
            //   title: Text(
            //     "Times of views",
            //     style: TextStyle(
            //         fontWeight: FontWeight.w100, fontSize: height * 1.80),
            //   ),
            // ),
            // ListTile(
            //   contentPadding: EdgeInsets.only(left: 50),
            //   title: Text(
            //     "About Epeepal",
            //     style: TextStyle(
            //         fontWeight: FontWeight.w100, fontSize: height * 1.80),
            //   ),
            // )
          ],
        ),
        // PolicyRow(
        //   returnHtml: "returnHtml",
        //   sellherHtml: sellherHtml,
        //   supportHtml: supportHtml,
        // ),
        SizedBox(
          height: 1,
          child: Container(
            color: Colors.grey[200],
          ),
        ),
        // IconTitleRow(
        //   height: height * 1.3,
        //   title: 'Rate Us',
        //   image: "assets/rateus.svg",
        //   divider: isLogin,
        //   onPressed: () {},
        //   isIcon: false,
        //   textColor: Colors.black.withOpacity(0.8),
        // ),

        Visibility(
          visible: true,
          child: IconTitleRow(
            height: width / 20,
            title: 'Logout',
            image: "assets/logout.svg",
            divider: false,
            onPressed: () {
              // logoutDialog();
            },
            isIcon: false,
            textColor: Colors.black.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
