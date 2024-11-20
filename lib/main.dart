import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notes_firebase/firebase_options.dart';

import 'core/constant/app_routes.dart';
import 'core/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  debugPrint('Initialized default app $app');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,

              // initialRoute: AppRoutes.questionRoute,
              initialRoute: AppRoutes.signUpRoute,
              // translations: Localization(), //translation class
              // locale: AppServices.localizationController?.language, //app language
              getPages: routes,
              // initialBinding: AppBindings(),
            ));
  }
}
