import 'package:ecommerce_app/controller/product_controller.dart';
import 'package:ecommerce_app/view/second_screen.dart';

import 'package:ecommerce_app/weight/Third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TabBarVi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var productController=Get.put(ProductController());
    var tshirt;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
        title: Text('Getting data from api'),
         bottom: TabBar(
            labelColor: Colors.white,
                tabs:[
                Tab(
                  text: 'All',
                  
                ),
                Tab(
                  text: 'Categorey',
                  
                ), 
                
              ] ),
        ),
        body: 
       
            TabBarView(
                     
              children: [
                 Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12),
                        child: GridView.builder(
                         shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                         crossAxisCount: 2,
                                         crossAxisSpacing: 12.0,
                                         mainAxisSpacing: 10.0,
                                         mainAxisExtent: 250 // You can adjust the number of columns
                                       ),
                                       itemCount: productController.productList.length,
                                       itemBuilder: (context, index) {
                                         return  InkWell(
                                          onDoubleTap:  () {
                                  // Navigate to the second screen
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                                            },
                                           child: Container(
                                                             decoration: BoxDecoration(
                                                               border: Border.all(width: 1,color: Colors.grey),
                                                               borderRadius: BorderRadius.circular(10),
                                                             ),
                                                              child: Column(
                                                                children: [
                                                                  ClipRRect(
                                                              borderRadius: BorderRadius.circular(10),
                                                                         child: Image.network(productController.productList[index].images![0],
                                                 height: 170,
                                                 width: double.infinity,
                                             fit: BoxFit.cover,
                                                    ),
                                                                          
                                                                   
                                                                    
                                                                  ),
                                                                    Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                                                                        child: Column(
                                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                                                         children: [
                                                                    Text(productController.productList[index].title!,style: TextStyle(fontSize: 10),),
                                                                            SizedBox(height: 2,),
                                                                    Text(productController.productList[index].description!,style: TextStyle(fontSize: 10),),
                                                                    
                                                             
                                                                    
                                                                         ],
                                                                        ),) 
                                                                ],
                                                              ),
                                           ),
                                         );
                                       },
                                     ),
                      ),
                    ),
                 Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12),
                        child: GridView.builder(
                         shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                         crossAxisCount: 2,
                                         crossAxisSpacing: 12.0,
                                         mainAxisSpacing: 10.0,
                                         mainAxisExtent: 250 // You can adjust the number of columns
                                       ),
                                       itemCount: productController.productList.length,
                                       itemBuilder: (context, index) {
                                         return  InkWell(
                                          onDoubleTap:  () {
                                  // Navigate to the second screen
                                         Navigator.push(context, MaterialPageRoute(builder: (context) =>thirdscreen()));
                                            },
                                           child: Container(
                                                             decoration: BoxDecoration(
                                                               border: Border.all(width: 1,color: Colors.grey),
                                                               borderRadius: BorderRadius.circular(10),
                                                             ),
                                                              child: Column(
                                                                children: [
                                                                  ClipRRect(
                                                              borderRadius: BorderRadius.circular(10),
                                                                         child: Image.network(productController.productList[index].category!.image!,
                                                 height: 170,
                                                 width: double.infinity,
                                             fit: BoxFit.cover,
                                                    ),
                                                                          
                                                                   
                                                                    
                                                                  ),
                                                                    Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                                                                        child: Column(
                                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                                                         children: [
                                                                    Text(productController.productList[index].category!.name!,style: TextStyle(fontSize: 10),),
                                                                            SizedBox(height: 2,),
                                                                    Text(productController.productList[index].description!,style: TextStyle(fontSize: 10),),
                                                                    
                                                             
                                                                    
                                                                         ],
                                                                        ),) 
                                                                ],
                                                              ),
                                           ),
                                         );
                                       },
                                     ),
                      ),
                    ),
                    Text('hyy'),
            ]),
          
      
      ),
    );

  }
}
