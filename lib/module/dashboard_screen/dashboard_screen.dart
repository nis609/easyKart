import 'dart:io';
import 'package:ecoomerce_app/module/cart/view/cart_screen.dart';
import 'package:ecoomerce_app/module/home_screen/views/categories_screen.dart';
import 'package:ecoomerce_app/module/home_screen/views/home_screen.dart';
import 'package:ecoomerce_app/module/login/views/login_phone.dart';
import 'package:ecoomerce_app/module/login/views/profile.dart';
import 'package:ecoomerce_app/module/login/widget/profile/not_login.dart';
import 'package:ecoomerce_app/res/app_color.dart';
import 'package:ecoomerce_app/res/size_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl/intl.dart';

import '../../main.dart';






enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
class DashboardScreen extends StatefulWidget {
  final int? index;
  final int? totalTab;
  final int? categoryIndex;

  const DashboardScreen({Key? key, this.index, this.totalTab, this.categoryIndex}) : super(key: key);
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}
// final productByCategoryProvide =
// FutureProvider.autoDispose<HomeModel>((ref) {
//   return ref.watch(homeScreenProvider).getHomePagess();
// });
class _DashboardScreenState extends State<DashboardScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  int pageIndex = 0;
  String a = "ss";
  late DateTime _selectedDate;
  int _selectedIndex = 0;
  List<dynamic> as=[];


  _selectDate(BuildContext context,TextEditingController _textEditingController) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext? context, Widget? childs) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                surface: Colors.blueGrey,
                onSurface: Colors.yellow,
              ),
              dialogBackgroundColor: Colors.blue[500],
            ),
            child: childs!,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
  TextEditingController _searchEditingController = TextEditingController();
  TextEditingController _date1EditingController = TextEditingController();
  TextEditingController _date2EditingController = TextEditingController();

  bool scrollListener(ScrollNotification scrollInfo) {

    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      if (scrollInfo.metrics.pixels > 30) {
        setState(() {
          a = "bb";
          _showAppBar=false;
         // _showAppBars=false;
        });
      } else {
        setState(() {
          a = "ss";
          _showAppBar=false;
          //_showAppBars=false;
        });
      };
      return scroll = true;
    }
    return scroll;
  }
@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void didUpdateWidget(covariant DashboardScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    final height = SizeConfig.screenHeight;
    return WillPopScope(
      child: Container(

        child: SafeArea(
          top: true,

          child: Scaffold(
          //  drawer: NavDrawer(),

            bottomNavigationBar: BottomNavigationBar(
              // iconSize: 25,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              onTap:_onItemTapped ,


              currentIndex: _selectedIndex,
              selectedFontSize: 30,
              unselectedIconTheme: IconThemeData(
                color: Colors.black54,

              ),
              unselectedItemColor: Colors.black54,
              selectedIconTheme: IconThemeData(color: Colors.orange),
              selectedItemColor: Colors.orange,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 25,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(

                    Icons.category,
                    size: 25,
                  ),

                  label: 'Categories',

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_sharp,size: 25,),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.admin_panel_settings_outlined,size: 25,
                  ),
                  label: 'About',
                ),
              ],
            ),

            body: NotificationListener<ScrollNotification>(
              onNotification: scrollListener,
              child: CustomScrollView(
                physics: NeverScrollableScrollPhysics(),


                slivers: [
                  // _showAppBar ==true ? Appbar(width!, "") : Appbar(
                  //     width!, ""),
                  // _showAppBar ==true ? Search(width, "") :   SliverList(delegate: SliverChildListDelegate([
                  //   SizedBox.shrink()
                  // ])),

                  // _showAppBars ==true ? NotificationAppbar(width, "") :   SliverList(delegate: SliverChildListDelegate([
                  //   SizedBox.shrink()
                  // ]))
                  SliverList(delegate: SliverChildListDelegate([
                    _dashBody(height!, width!)
                  ]))
                ],

              ),
            ),
          ),
        ),
      ),
      onWillPop: ()=>
        _exitApp(context)
      ,
    );
  }
  Future<bool> _exitApp(BuildContext context) async {
    SizeConfig().init(context);
    final width = SizeConfig.safeBlockHorizontal;
    final height = SizeConfig.safeBlockVertical;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Are you sure you want to close \napplication?',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 14),
                ),
              ),
              _actionButton(context, height!, width!),
            ],
          ),
        ),
      ),
    );
    return true;
  }
  Widget _dashBody(double height, double width) {
    return Container(
      height: height,
      width: width,

      child:  IndexedStack(
        index: _selectedIndex,
        children: _pages,

      ),
    );
  }


  onPageChange(index) {
    setState(() {
      currentIndex = index;
      pageIndex = currentIndex;
    });
  }

  onTabChange(index) {
    setState(() {
      currentIndex = index;
      pageController.jumpToPage(index);
    });
  }
  TextEditingController dateinput = TextEditingController();


  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Videos',
      style: optionStyle,
    ),
    Text(
      'Index 2: Search',
      style: optionStyle,
    ),
    Text(
      'Index 3: About',
      style: optionStyle,
    ),
  ];
  final _formKey = GlobalKey<FormState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }
  bool _showAppBar = false;
  bool _showAppBars = false;
    List<Widget> _pages = <Widget>[
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),

      Profile(),

  ];
  Widget Appbar(double width,String title){
    return  SliverAppBar(
      expandedHeight: width/8,
      floating: false,
      pinned: true,
      toolbarHeight: 50,
      iconTheme: IconThemeData(color: Colors.purple),


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
      flexibleSpace: Stack(
        children: <Widget>[
          Positioned.fill(
              child:Text(title)
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Image.asset("assets/applogo.png"),
              ),
            ),
          ),
        ],
      ),
    );

  }
  Widget Search(double width,String title){
    return  SliverAppBar(
      expandedHeight:50,
      floating: true,
      pinned: false,
      toolbarHeight: 50,
      iconTheme: IconThemeData(color: Colors.purple),automaticallyImplyLeading: false,


      backgroundColor: Colors.grey[200],

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

      ],
      bottom: PreferredSize(                       // Add this code
        preferredSize: Size.fromHeight(150.0),      // Add this code
        child: Text(''),                           // Add this code
      ),

      flexibleSpace: Container(
        height: 350,

        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 1

          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(
                  0, 3), // changes position of shadow
            ),

          ],
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
        ),



        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:buildItemsForSearch(context) ,
            )

          ],
        ),
      ),
    );

  }
  Widget buildItemsForSearch(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex:1,
              child: TextField(
              controller: _date1EditingController, //editing controller of this TextField
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),
                  // suffixIcon: Icon(Icons.import_contacts_sharp),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:Colors.grey,
                        width: 1.0),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),
                  suffixIcon: Icon(Icons.calendar_today),//icon of text field
                  labelText: "Enter Date" //label text of field
              ),
              readOnly: false,  //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context, initialDate: DateTime.now(),
                    firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101)
                );

                if(pickedDate != null ){
                  print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate); //formatted date output using intl package =>  2021-03-16
                  //you can implement different kind of Date Format here according to your requirement

                  setState(() {
                    _date1EditingController.text = formattedDate; //set output date to TextField value.
                  });
                }else{
                  print("Date is not selected");
                }
              },
    ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _date2EditingController, //editing controller of this TextField
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(5.0),
                        ),
                      ),
                      // suffixIcon: Icon(Icons.import_contacts_sharp),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:Colors.grey,
                            width: 1.0),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(5.0),
                        ),
                      ),
                      suffixIcon: Icon(Icons.calendar_today),//icon of text field
                      labelText: "Enter Date" //label text of field
                  ),
                  readOnly: false,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101),

                    );

                    if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        _date2EditingController.text = formattedDate; //set output date to TextField value.
                      });
                    }else{
                      print("Date is not selected");
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 8),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextField(
              controller: _searchEditingController, //editing controller of this TextField
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),
                  // suffixIcon: Icon(Icons.import_contacts_sharp),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:Colors.grey,
                        width: 1.0),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(5.0),
                    ),
                  ),

                  labelText: "keyword",
                hintText: "keyword",
              ),

              readOnly: false,  //set it true, so that user will not able to edit text
              onTap: () async {

              },
            ),
          ),
        ),
        TextButton(

            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return Colors.blue.withOpacity(0.04);
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed))
                    return Colors.blue.withOpacity(0.12);
                  return null; // Defer to the widget's default.
                },
              ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.transparent)
                    )
                )
            ),
            onPressed: () { },
            child: Container(
                width: SizeConfig.screenWidth!-50,
                child: Center(child: Text('Search',style: TextStyle(color: Colors.white),)))
        )
      ]
    );



    // return ListTile(
    //   title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage),
    //   subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
    // );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello"),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
  Widget popUpMenuForNotification(){
    return Container(
      height: 500,
      width: 150,
      child: PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
      const PopupMenuItem(
      child: Text('Option1'),
      ),
      const PopupMenuItem(
      child: Text('Option2'),
      ),
      const PopupMenuItem(
      child: Text('Option3'),
      )
      ],
      ),
    );

  }





  Widget _actionButton(BuildContext context, double height, double width) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 6,
              width: height *15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4)),
                color: Colors.grey.shade300,
              ),
              child: Center(
                  child: Text("Cancel",style: TextStyle(color:Colors.black87),)
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            if (Platform.isAndroid) {
              SystemNavigator.pop();
            } else if (Platform.isIOS) {
              exit(0);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 6,
              width: height * 15 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4)),
                color: Colors.blue.shade200,
              ),
              child: Center(
                  child: Text("Confirm",style: TextStyle(color:Colors.black),)
              ),
            ),
          ),
        ),

      ],
    );
  }

  Widget buttonSpecific(double height, Function function, Color buttonColor,
      String text, Color textColor) {
    return Flexible(
      child: InkWell(
        // onTap: function,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height * 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4)),
              color: buttonColor,
            ),
            child: Center(
              child: Text("text",style: TextStyle(height: height,color: textColor),)
            ),
          ),
        ),
      ),
    );
  }
}
