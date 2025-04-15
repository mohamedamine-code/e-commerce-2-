import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart.dart';
import 'package:flutter_application_1/model/shoe.dart';
import 'package:flutter_application_1/util/shoe_cart.dart';
import 'package:provider/provider.dart';

class cart_page extends StatefulWidget {
  const cart_page({super.key});

  @override
  State<cart_page> createState() => _cart_pageState();
}

class _cart_pageState extends State<cart_page> {
  @override
  Widget build(BuildContext context) {
    void delateitem(Shoe x){
      Provider.of<Cart>(context,listen: false).delate_item(x);
    }
    return Consumer<Cart>(builder: (context,value,child)=>Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Text('Cart',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Expanded(child: ListView.builder(
              itemCount: value.getshop_cart().length,
              itemBuilder:(context,index)=>shoe_cart(
                shoe: value.getshop_cart()[index],
                delateitem: (){
                  delateitem(value.getshop_cart()[index]);
                },
              )
            ))
          ],
        ),
      ),
      )
    );
  }
}