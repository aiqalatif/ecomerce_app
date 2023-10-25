import 'package:ecommerce_app/weight/Tab_viewbr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) =>  GetMaterialApp(
        home:TabBarVi(),
        //
        debugShowCheckedModeBanner: false,
      ), designSize: const Size(428,912),
    );
  }
}

