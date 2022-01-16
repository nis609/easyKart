import 'package:ecoomerce_app/module/login/widget/profile/as.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTitleRow extends StatelessWidget {
  const IconTitleRow(
      {Key? key,
        required this.height,
        required this.title,
        required this.image,
        required this.divider,
        required this.onPressed,
        this.isIcon,
        this.textColor})
      : super(key: key);
  final double height;
  final String title;
  final String image;
  final bool divider;
  final Function onPressed;
  final bool? isIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as void Function()?,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      image,

                      height: height * 2,
                    ),
                  ),
                  SizedBox(
                    width: height * 2,
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      margin: EdgeInsets.only(left: 7),
                      child: BuildText(
                        text: title,
                        height: 16,
                        color: textColor,
                      ),
                    ),
                  ),
                  Visibility(
                      visible: isIcon!,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ))
                ],
              ),
              SizedBox(
                height: height * 1,
              ),
              divider
                  ? Divider(
                thickness: height * 0.1,
              )
                  : Center()
            ],
          ),
        ),
      ),
    );
  }
}