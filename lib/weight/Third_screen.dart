import 'package:ecommerce_app/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class thirdscreen extends StatefulWidget {
  const thirdscreen({super.key});

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  @override
  Widget build(BuildContext context) {
    var productController=Get.put(ProductController());
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(220, 241, 186, 6),
        leading:  IconButton( onPressed: () {
          // Navigate back to the first screen
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,),
          ),
        title: Text('Product detail')),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.yellowAccent),
            
            ),
           child:Image.network(productController.productList[1].category!.image!)
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Text(productController.productList[1].category!.name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(width: 200,),
                 Text('\$'+productController.productList[1].price.toString() ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
              ],
            ),
          ),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal:20),
       child: Text(productController.productList[1].description!,
       style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
      
     ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:50,vertical: 50),
      child: Container(
      height: 50,
      width: 275,
      child: ElevatedButton(
        onPressed:(){},
        style:  ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color:Color.fromARGB(220, 241, 186, 6))
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(220, 241, 186, 6)),
        ),
        child: Text('Buy Now'),
      ),
    )
    )

        ],
      ) 
    );
  }
}