// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/material.dart';
import 'package:emergency_app/views/AmbulanceAdminView/AmbulanceAdminView.dart'
    as _i15;
import 'package:emergency_app/views/AmbulanceServiceView/AmbulanceService.dart'
    as _i7;
import 'package:emergency_app/views/AmbulGoogleCurrentLocation/AmbulGoogleCurrentLocation.dart'
    as _i10;
import 'package:emergency_app/views/FireBridageServiceView/FireBridageServiceView.dart'
    as _i8;
import 'package:emergency_app/views/FireBrigadeAdminView/FireBrigadeAdminView.dart'
    as _i13;
import 'package:emergency_app/views/FireBrigadeGoogleCurrentLocation/FireBrigadeGoogleCurrentLocation.dart'
    as _i12;
import 'package:emergency_app/views/Home/Home.dart' as _i6;
import 'package:emergency_app/views/LoginView/loginView.dart' as _i4;
import 'package:emergency_app/views/ObBoardView/OnBoardView.dart'
    as _i3;
import 'package:emergency_app/views/PoliceAdminView/PoliceAdminView.dart'
    as _i14;
import 'package:emergency_app/views/PoliceGoogleCurrentLocation/PoliceGoogleCurrentLocation.dart'
    as _i11;
import 'package:emergency_app/views/PoliceServiceView/PoliceServiceView.dart'
    as _i9;
import 'package:emergency_app/views/SignUp/signUp.dart' as _i5;
import 'package:emergency_app/views/SplashView/SplashScreenView.dart'
    as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i17;

class Routes {
  static const splashScreen = '/';

  static const onboardView = '/onboard-view';

  static const loginView = '/login-view';

  static const signUp = '/sign-up';

  static const home = '/home';

  static const ambulanceServiceView = '/ambulance-service-view';

  static const fireBridageServiceView = '/fire-bridage-service-view';

  static const policeServicesView = '/police-services-view';

  static const ambulGoogleCurrentLocation = '/ambul-google-current-location';

  static const policeGoogleCurrentLocation = '/police-google-current-location';

  static const fireBrigadeGoogleCurrentLocation =
      '/fire-brigade-google-current-location';

  static const fireBrigadeAdminView = '/fire-brigade-admin-view';

  static const policeAdminView = '/police-admin-view';

  static const ambulanceAdminView = '/ambulance-admin-view';

  static const all = <String>{
    splashScreen,
    onboardView,
    loginView,
    signUp,
    home,
    ambulanceServiceView,
    fireBridageServiceView,
    policeServicesView,
    ambulGoogleCurrentLocation,
    policeGoogleCurrentLocation,
    fireBrigadeGoogleCurrentLocation,
    fireBrigadeAdminView,
    policeAdminView,
    ambulanceAdminView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashScreen,
      page: _i2.SplashScreen,
    ),
    _i1.RouteDef(
      Routes.onboardView,
      page: _i3.OnboardView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.signUp,
      page: _i5.signUp,
    ),
    _i1.RouteDef(
      Routes.home,
      page: _i6.home,
    ),
    _i1.RouteDef(
      Routes.ambulanceServiceView,
      page: _i7.AmbulanceServiceView,
    ),
    _i1.RouteDef(
      Routes.fireBridageServiceView,
      page: _i8.FireBridageServiceView,
    ),
    _i1.RouteDef(
      Routes.policeServicesView,
      page: _i9.PoliceServicesView,
    ),
    _i1.RouteDef(
      Routes.ambulGoogleCurrentLocation,
      page: _i10.AmbulGoogleCurrentLocation,
    ),
    _i1.RouteDef(
      Routes.policeGoogleCurrentLocation,
      page: _i11.PoliceGoogleCurrentLocation,
    ),
    _i1.RouteDef(
      Routes.fireBrigadeGoogleCurrentLocation,
      page: _i12.FireBrigadeGoogleCurrentLocation,
    ),
    _i1.RouteDef(
      Routes.fireBrigadeAdminView,
      page: _i13.FireBrigadeAdminView,
    ),
    _i1.RouteDef(
      Routes.policeAdminView,
      page: _i14.PoliceAdminView,
    ),
    _i1.RouteDef(
      Routes.ambulanceAdminView,
      page: _i15.AmbulanceAdminView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashScreen(),
        settings: data,
      );
    },
    _i3.OnboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.OnboardView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.signUp: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.signUp(),
        settings: data,
      );
    },
    _i6.home: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.home(),
        settings: data,
      );
    },
    _i7.AmbulanceServiceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.AmbulanceServiceView(),
        settings: data,
      );
    },
    _i8.FireBridageServiceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.FireBridageServiceView(),
        settings: data,
      );
    },
    _i9.PoliceServicesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.PoliceServicesView(),
        settings: data,
      );
    },
    _i10.AmbulGoogleCurrentLocation: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.AmbulGoogleCurrentLocation(),
        settings: data,
      );
    },
    _i11.PoliceGoogleCurrentLocation: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.PoliceGoogleCurrentLocation(),
        settings: data,
      );
    },
    _i12.FireBrigadeGoogleCurrentLocation: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.FireBrigadeGoogleCurrentLocation(),
        settings: data,
      );
    },
    _i13.FireBrigadeAdminView: (data) {
      final args = data.getArgs<FireBrigadeAdminViewArguments>(
        orElse: () => const FireBrigadeAdminViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i13.FireBrigadeAdminView(key: args.key),
        settings: data,
      );
    },
    _i14.PoliceAdminView: (data) {
      final args = data.getArgs<PoliceAdminViewArguments>(
        orElse: () => const PoliceAdminViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i14.PoliceAdminView(key: args.key),
        settings: data,
      );
    },
    _i15.AmbulanceAdminView: (data) {
      final args = data.getArgs<AmbulanceAdminViewArguments>(
        orElse: () => const AmbulanceAdminViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i15.AmbulanceAdminView(key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class FireBrigadeAdminViewArguments {
  const FireBrigadeAdminViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class PoliceAdminViewArguments {
  const PoliceAdminViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class AmbulanceAdminViewArguments {
  const AmbulanceAdminViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

extension NavigatorStateExtension on _i17.NavigationService {
  Future<dynamic> navigateToSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHome([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.home,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAmbulanceServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ambulanceServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFireBridageServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fireBridageServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPoliceServicesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.policeServicesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAmbulGoogleCurrentLocation([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ambulGoogleCurrentLocation,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPoliceGoogleCurrentLocation([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.policeGoogleCurrentLocation,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFireBrigadeGoogleCurrentLocation([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fireBrigadeGoogleCurrentLocation,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFireBrigadeAdminView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.fireBrigadeAdminView,
        arguments: FireBrigadeAdminViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPoliceAdminView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.policeAdminView,
        arguments: PoliceAdminViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAmbulanceAdminView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.ambulanceAdminView,
        arguments: AmbulanceAdminViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHome([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.home,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAmbulanceServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ambulanceServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFireBridageServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fireBridageServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPoliceServicesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.policeServicesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAmbulGoogleCurrentLocation([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ambulGoogleCurrentLocation,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPoliceGoogleCurrentLocation([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.policeGoogleCurrentLocation,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFireBrigadeGoogleCurrentLocation([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fireBrigadeGoogleCurrentLocation,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFireBrigadeAdminView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.fireBrigadeAdminView,
        arguments: FireBrigadeAdminViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPoliceAdminView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.policeAdminView,
        arguments: PoliceAdminViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAmbulanceAdminView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.ambulanceAdminView,
        arguments: AmbulanceAdminViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
