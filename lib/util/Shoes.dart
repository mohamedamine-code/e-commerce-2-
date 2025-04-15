import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart.dart';
import 'package:flutter_application_1/model/shoe.dart';
import 'package:provider/provider.dart';

class Shoes extends StatelessWidget {
  Shoe shoe;
  final VoidCallback additem;
  Shoes({super.key,required this.shoe , required this.additem});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 310,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(shoe.pathImage,width: 250,),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(shoe.describtion,style: TextStyle(fontSize: 10,color: const Color.fromARGB(255, 114, 114, 114)),),
                )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(shoe.nom,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                      Text(shoe.price.toString()),
                  
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    additem();
                  },
                  child: Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight:Radius.circular(12) )
                    ),
                    child: Center(
                      child: Icon(Icons.add,color: Colors.white,size: 33,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}