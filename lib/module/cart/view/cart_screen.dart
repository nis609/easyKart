import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _Cart_ScreenState createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(

        backgroundColor: Colors.black54,
        title: Text("Cart"),
        elevation: 2,

      ),
      body:Column(
        children: [
          Card(
            elevation: 1,
            child: Container(
              height: 120,
              child: Row(

                children: [
                  Expanded(child: Image.asset("assets/logo.png"),flex: 1,),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Product NAME",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),),
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text("Rs 2400",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Product varient",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black38),),
                        ),

                      ],
                    ),
                  ),flex: 2,),
                ],
              ),
            ),
          ),

          Card(
            elevation: 1,
            child: Container(
              height: 120,
              child: Row(

                children: [
                  Expanded(child: Image.asset("assets/logo.png"),flex: 1,),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Product NAME",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Rs 2400",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text("Product varient",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black38),),
                        ),

                      ],
                    ),
                  ),flex: 2,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
