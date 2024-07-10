import 'package:flutter/cupertino.dart';
import "package:get/get.dart";

class ImageData extends StatelessWidget {
  String icon;
  final double? width;

  ImageData(
    this.icon, {
    Key? key,
    this.width = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(icon, width: width! / Get.mediaQuery.devicePixelRatio);
  }
}

class IconsPath {
  static String get homeOff => "assets/images/bottom_nav_home_off_icon.png";

  static String get homeOn => "assets/images/bottom_nav_home_on_icon.png";

  static String get searchOff => "assets/images/bottom_nav_search_off_icon.png";

  static String get searchOn => "assets/images/bottom_nav_search_on_icon.png";

  static String get uploadIcon => "assets/images/bottom_nav_upload_icon.png";

  static String get activeOn => "assets/images/bottom_nav_active_on_icon.png";

  static String get activeOff => "assets/images/bottom_nav_active_off_icon.png";

  static String get logo => "assets/images/logo.jpg";

  static String get directMessage => "assets/images/direct_msg_icon.jpg";
}
