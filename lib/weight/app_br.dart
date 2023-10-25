import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CutomAppBr extends StatelessWidget implements PreferredSizeWidget {
   const CutomAppBr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:
             [
            CircleAvatar(
                child: Container(
                  height: 20.h,
                  width: 15.w,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
              ),
              const SizedBox(width: 10,height: 30,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Text('Hello',style: 
                  TextStyle(fontSize: 15,color: Colors.grey),),
                  Text('krishna SN',style: 
                  TextStyle(fontSize: 15,color: Colors.black),),
                ],
              ),
              const SizedBox(width: 125,),
               const Icon(Icons.notifications,color: Colors.black,size: 25,),
               
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: const Icon(Icons.menu,color: Colors.black,size: 25,),
                ),
                 
            ]) ,
           
            

       
        
          
    );
  }
  @override
  Size get preferredSize => const Size(double.maxFinite,80,);
}