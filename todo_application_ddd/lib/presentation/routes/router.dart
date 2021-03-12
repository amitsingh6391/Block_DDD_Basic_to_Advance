import 'package:auto_route/auto_route_annotations.dart';

import 'package:todo_application_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:todo_application_ddd/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $MyRouter {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
}
