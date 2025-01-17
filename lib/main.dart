import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musicapp_trav/core/configs/theme/app_theme.dart';
import 'package:musicapp_trav/firebase_options.dart';
import 'package:musicapp_trav/presentation/splash/pages/splash.dart';
import 'package:musicapp_trav/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: AppTheme.lightTheme,
       debugShowCheckedModeBanner: false,
       home: const SplashPage()
    );
  }
}



