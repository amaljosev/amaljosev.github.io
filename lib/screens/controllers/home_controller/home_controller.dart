import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/models/appbar_menu.dart';
import 'package:myportfolio/screens/models/services_model.dart';
import 'package:myportfolio/screens/models/skills_model.dart';

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
  List<SkillsModel> mySkills = [
    SkillsModel(title: 'Flutter', icon: FontAwesomeIcons.dev),
    SkillsModel(title: 'Android', icon: FontAwesomeIcons.android),
    SkillsModel(title: 'iOS', icon: FontAwesomeIcons.apple),
    SkillsModel(title: 'Dart', icon: FontAwesomeIcons.code),
    SkillsModel(title: 'C programming', icon: FontAwesomeIcons.c),
    SkillsModel(title: 'Python', icon: FontAwesomeIcons.python),
    SkillsModel(title: 'Django REST Framework', icon: FontAwesomeIcons.code),
    SkillsModel(title: 'git', icon: FontAwesomeIcons.git),
    SkillsModel(title: 'gitHub', icon: FontAwesomeIcons.github),
    SkillsModel(title: 'SQFite', icon: FontAwesomeIcons.database),
    SkillsModel(title: 'Hive', icon: FontAwesomeIcons.database),
    SkillsModel(title: 'Bloc', icon: FontAwesomeIcons.cube),
    SkillsModel(title: 'GetX', icon: FontAwesomeIcons.g),
    SkillsModel(title: 'Debugging', icon: FontAwesomeIcons.bug),
    SkillsModel(title: 'Figma', icon: FontAwesomeIcons.figma),
    SkillsModel(title: 'Firebase', icon: FontAwesomeIcons.file),
  ];
  List<TabSkillsModel> skills = [
    TabSkillsModel(title: 'Flutter', progress: 0.9),
    TabSkillsModel(title: 'Dart', progress: 0.9),
    TabSkillsModel(title: 'Python', progress: 0.8),
    TabSkillsModel(title: 'C and Java', progress: 0.5),
    TabSkillsModel(title: 'REST', progress: 0.6),
    TabSkillsModel(title: 'Git', progress: 0.7),
    TabSkillsModel(title: 'SQFite', progress: 0.8),
    TabSkillsModel(title: 'Hive', progress: 0.8),
    TabSkillsModel(title: 'Firebase', progress: 0.8),
    TabSkillsModel(title: 'Bloc', progress: 0.8),
    TabSkillsModel(title: 'GetX', progress: 0.8),
    TabSkillsModel(title: 'Figma', progress: 0.7),
  ];
}
