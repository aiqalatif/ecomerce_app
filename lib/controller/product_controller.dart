import 'dart:convert';

import 'package:ecommerce_app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
class ProductController extends GetxController{
   final tabIndex = 0.obs; // Initialize with the default tab index

  void setTabIndex(int index) {
    tabIndex.value = index;
  }
   var isLoading=true.obs;
    var productList=<Autogenerated>[].obs;
    @override
  void onInit() {
     getUserApi();
    super.onInit();
  }
 void getUserApi() async {
  try {
  const String userurl='https://api.escuelajs.co/api/v1/products';
  final response= await http.get(Uri.parse(userurl));
   if (response.statusCode == 200) {
     final List result=jsonDecode(response.body);
     productList.value=result.map((e) => Autogenerated.fromJson(e)).toList();
      isLoading(true);
      print(productList.length);

    update();
      }
      else{
        print('erre');
      }
    } finally {
      isLoading(false);
    }
  }

}
