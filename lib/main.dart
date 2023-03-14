import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/App/App.locator.dart';
import 'package:emergency_app/App/App.router.dart';
import 'package:emergency_app/firebase_options.dart';
import 'package:emergency_app/utills/Colors.dart';
import 'package:emergency_app/views/FireBrigadeAdminView/FireBrigadeAdminView.dart';
import 'package:stacked_services/stacked_services.dart';


void main() async {
  await setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: fireStore(),
      //home: FireBrigadeAdminView(),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}

