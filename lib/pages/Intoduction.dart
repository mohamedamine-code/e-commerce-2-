
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/First_page.dart';

class Intoduction extends StatelessWidget {
  const Intoduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child: 
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/Nike-Logo-1971-present-removebg-preview.png',width: 290,),
              SizedBox(
                height: 100,
              ),
              Text('Just Do It',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('Brand new sneakres and custom kicks made with premium quality',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: const Color.fromARGB(111, 0, 0, 0)),)
                  ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text('Shop Now',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    
    );
  }
}