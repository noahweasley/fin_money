import 'package:fin_money/core/app_init.dart';
import 'package:fin_money/core/navigation/navigation.dart';
import 'package:fin_money/features/shared/bindings/main_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  await AppInitialization.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MainBinding(),
      initialRoute: AppRouter.initialRoute,
      getPages: AppRouter.pages,
      title: 'Fin Money',
    );
  }
}
