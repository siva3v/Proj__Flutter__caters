import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'blocks/login/login_screen.dart';
import 'shared/util/theme/app_theme.dart';
import 'blocks/app_base/app_base.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppTheme.primaryColor, // navigation bar color
  ));

  final getIt = GetIt.instance;
  var appBase = await AppBase.create()..init();
  if (!getIt.isRegistered<AppBase>()) getIt.registerSingleton<AppBase>(appBase);

  //FlutterNativeSplash.remove();
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
          brightness: Brightness.light,
          primaryColor: AppTheme.primaryColor,
          primarySwatch: AppTheme().primaryMaterialColor()
      ),
      home: LoginScreen(),
    );
  }
}

