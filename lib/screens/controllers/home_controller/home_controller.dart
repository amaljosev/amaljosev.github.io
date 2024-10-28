import 'package:get/get.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/models/appbar_menu.dart';

class HomeController extends GetxController {
  List<AppbarMenu> menu = [
    AppbarMenu(title: 'Home', style: Appstyles.appbarHoverTextStyle),
    AppbarMenu(title: 'Services', style: Appstyles.appbarTextStyle),
    AppbarMenu(title: 'About Me', style: Appstyles.appbarTextStyle),
    AppbarMenu(title: 'Portfolio', style: Appstyles.appbarTextStyle),
    AppbarMenu(title: 'Contact', style: Appstyles.appbarTextStyle),
  ];
  RxList<bool> isHoverd = List.filled(5, false).obs;
}
