import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/models/appbar_menu.dart';
import 'package:myportfolio/screens/models/services_model.dart';

class HomeController extends GetxController {
  List<AppbarMenu> menu = [
    AppbarMenu(title: 'Home', style: Appstyles.appbarHoverTextStyle),
    AppbarMenu(title: 'Services', style: Appstyles.appbarTextStyle),
    AppbarMenu(title: 'About Me', style: Appstyles.appbarTextStyle),
    AppbarMenu(title: 'Portfolio', style: Appstyles.appbarTextStyle),
    AppbarMenu(title: 'Contact', style: Appstyles.appbarTextStyle),
  ];
  RxList<bool> isHoverd = List.filled(5, false).obs;

  List<ServicesModel> myServices = [
    ServicesModel(
        title: 'Mobile App Development',
        icon: FontAwesomeIcons.android,
        description:
            '''Skilled in building high-quality mobile apps with Flutter, I create smooth and responsive apps for both iOS and Android. From clean design to strong performance, I focus on delivering user-friendly experiences that bring ideas to life and meet your needs.'''),
    ServicesModel(
        title: 'UI/UX Desingning',
        icon: FontAwesomeIcons.figma,
        description:
            '''With a focus on creating intuitive and visually engaging designs, I use Figma to craft user experiences that are both beautiful and easy to navigate. My goal is to design interfaces that resonate with users, blending functionality with creativity to enhance each interaction.'''),
    ServicesModel(
        title: 'Web App Development',
        icon: FontAwesomeIcons.globe,
        description:
            '''Building dynamic, responsive websites using Flutter, I bring ideas to life on the web with smooth performance and a cohesive design. From layout to deployment, I create web experiences that work seamlessly across devices, offering a consistent and engaging user experience.'''),
  ];
}
