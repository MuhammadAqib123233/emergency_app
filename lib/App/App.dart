import 'package:emergency_app/services/AuthService.dart';
import 'package:emergency_app/services/ToastService.dart';
import 'package:emergency_app/views/AmbulGoogleCurrentLocation/AmbulGoogleCurrentLocation.dart';
import 'package:emergency_app/views/AmbulanceAdminView/AmbulanceAdminView.dart';
import 'package:emergency_app/views/AmbulanceServiceView/AmbulanceService.dart';
import 'package:emergency_app/views/FireBridageServiceView/FireBridageServiceView.dart';
import 'package:emergency_app/views/FireBrigadeAdminView/FireBrigadeAdminView.dart';
import 'package:emergency_app/views/FireBrigadeGoogleCurrentLocation/FireBrigadeGoogleCurrentLocation.dart';
import 'package:emergency_app/views/Home/Home.dart';
import 'package:emergency_app/views/LoginView/loginView.dart';
import 'package:emergency_app/views/ObBoardView/OnBoardView.dart';
import 'package:emergency_app/views/PoliceAdminView/PoliceAdminView.dart';
import 'package:emergency_app/views/PoliceGoogleCurrentLocation/PoliceGoogleCurrentLocation.dart';
import 'package:emergency_app/views/PoliceServiceView/PoliceServiceView.dart';
import 'package:emergency_app/views/SignUp/signUp.dart';
import 'package:emergency_app/views/SplashView/SplashScreenView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: OnboardView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: signUp),
    MaterialRoute(page: home),
    MaterialRoute(page: AmbulanceServiceView),
    MaterialRoute(page: FireBridageServiceView),
    MaterialRoute(page: PoliceServicesView),
    MaterialRoute(page: AmbulGoogleCurrentLocation),
    MaterialRoute(page: PoliceGoogleCurrentLocation),
    MaterialRoute(page: FireBrigadeGoogleCurrentLocation),
    MaterialRoute(page: FireBrigadeAdminView),
    MaterialRoute(page: PoliceAdminView),
    MaterialRoute(page: AmbulanceAdminView),
  ],
  dependencies: [
    Singleton(
      classType: NavigationService,
    ),
    LazySingleton(
     classType: ToastService,
    ),
     LazySingleton(
     classType: AuthService,
    ),
  ],
)
class App {}