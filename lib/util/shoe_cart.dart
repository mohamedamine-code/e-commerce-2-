import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/shoe.dart';

class shoe_cart extends StatelessWidget {
  Shoe shoe;
  final VoidCallback delateitem;
   shoe_cart({super.key,required this.shoe, required this.delateitem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.amberAccent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(shoe.pathImage,width: 80,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  shoe.nom,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text(shoe.price.toString()),
              ],
            ),
            GestureDetector(
              onTap: (){
                delateitem();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.delete),
              ),
            )
          ],
        ),
      ),
    );
  }
}
