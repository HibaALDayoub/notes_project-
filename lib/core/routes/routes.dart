import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../modules/sign_up/binding/sign_up_binding.dart';
import '../../modules/sign_up/view/sign_up_page.dart';
import '../constant/app_routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoutes.signUpRoute,
      page: () => SignUpPage(),
      transition: Transition.fade,
      binding: SignUpBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
];
