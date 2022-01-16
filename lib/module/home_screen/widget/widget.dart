import 'package:flutter/material.dart';
import '../../../component/input.dart';
import '../../../component/misc.dart';
import '../../../component/transparent_container.dart';
import '../../../res/app_color.dart';

List<Color> colors = const [
  Color(0xffF58529),
  Color(0xffFEDA77),
  Color(0xffDD2A7B),
  Color(0xff8134AF),
  Color(0xff515BD4)
];

Widget buildStackScreenWithBGImage(double height, double width,
     Widget child, String image,
    {String type = 'Normal', String title='title'}) {
  return Stack(
    children: [
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black.withOpacity(0.75),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // width: type == "Signup" ? width * 9 : width * 30,
                child: type == 'Signup'
                    ? Container(
                        padding: const EdgeInsets.only(left: 18),
                        alignment: Alignment.centerLeft,
                        child: BoldText(
                          title,
                          weight: FontWeight.w500,
                          fontSize: width * 10,
                        ),
                      )
                    : BoldText(
                        AppColor.appName,
                        fontSize: width * 13,
                      ),
              ),
              SizedBox(
                height: height * 15,
              ),
              child
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildTransparentButton(BuildContext context, double width, double height,
    VoidCallback ontap, String title, Alignment aLignment) {
  return Align(
    alignment: aLignment,
    child: InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: width * 40,
        child: TrasparentContainer(
          height: height * 0.8,
          width: width,
          child: Center(
              child: BoldText(
            title,
            fontSize: width * 5,
            weight: FontWeight.w300,
          )),
        ),
      ),
    ),
  );
}

Widget buildExternalLogin(
    Widget image, String text, double width, double height, VoidCallback pressed,
    {Color? color}) {
  return InkWell(
    onTap: pressed,
    child: Container(
        width: width * 15,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          gradient: LinearGradient(
              colors: text == 'instagram' ? colors : [color??Colors.black, color??Colors.black],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight),
          boxShadow:const  [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: CircleAvatar(
            backgroundColor: color, radius: height * 2, child: image)),
  );
}

TrasparentContainer buildTrasparentContainerTextFeild(
    {double width=1,
    double height=1,
    IconData icon=Icons.ac_unit,
    String title='Title',
    TextInputType type=TextInputType.name}) {
  return TrasparentContainer(
    width: width,
    height: height,
    child: AppTextInput(
      title,
      width: width * 5,
      icon: icon,
      textInputType: type,
      style: TextStyle(
          fontFamily: 'Sansation',
          fontSize: width * 5,
          fontWeight: FontWeight.w500,
          color: Colors.white),
    ),
  );
}

Widget buildRichText(
    {String? text1, String ?text2, TextStyle ?style1, TextStyle? style2}) {
  return RichText(
    text: TextSpan(
      text: text1,
      style: style1,
      children: <TextSpan>[
        TextSpan(text: text2, style: style2),
      ],
    ),
  );
}
