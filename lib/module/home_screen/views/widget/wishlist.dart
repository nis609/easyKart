import 'dart:ui';

import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  @override
  WishListState createState() => WishListState();
}

class WishListState extends State<WishList> {

  Color color = Colors.amber;
  bool wishlist=false;
  void onTap() {
    print("asdasdasdasdasd");
    if(wishlist==true){
      setState(() {
        print("asdasdasdasdasd");

        wishlist=false;

      });
    }else{
      setState(() {
        print("asdasdasdasdasd");

        wishlist=true;

      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return ColorState(
      w: wishlist,



      onTap: onTap,
      child: Box(
        wishlist: wishlist,
      ),
    );
  }
}

class ColorState extends InheritedWidget {
  ColorState({
    Key? key,
    this.color,
    this.icon,
    this.w,

    this.onTap,
    required Widget child,
  }) : super(key: key, child: child);

  final Color? color;
  final Function? onTap;
  final Icon? icon;
  final bool? w;

  @override
  bool updateShouldNotify(ColorState oldWidget) {
    print("Asdasdasdasd");
    return w != oldWidget.w;
  }

  static ColorState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorState>();
  }
}

class BoxTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:   Box(),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final bool? wishlist;

  const Box({Key? key, this.wishlist}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final colorState = ColorState.of(context);
    return GestureDetector(
      onTap: (){

        print("Dasdasdasd");
        colorState?.onTap;
      },
      //onVerticalDragUpdate: (d) => print('dragging vertical'),
      //onHorizontalDragUpdate: (d) => print('dragging horizontal'),
      child:Icon(this.wishlist==true?Icons.favorite :Icons.favorite_border,size: 25,color:this.wishlist==true?Colors.red: Colors.red,),
    );
  }
}